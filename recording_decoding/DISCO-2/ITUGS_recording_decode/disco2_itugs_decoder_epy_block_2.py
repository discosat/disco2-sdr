"""
Pack 8 bits into bytes
Drops frames shorter than 32 bytes (noise false triggers)
"""

import numpy as np
from gnuradio import gr
import pmt


class blk(gr.sync_block):
    def __init__(self):
        gr.sync_block.__init__(
            self,
            name='Pack 8 bits',
            in_sig=None,
            out_sig=None)

        self.message_port_register_in(pmt.intern('PDU_in'))
        self.message_port_register_out(pmt.intern('PDU_out'))
        self.set_msg_handler(pmt.intern('PDU_in'), self.handle_msg)

    def handle_msg(self, msg):
        try:
            bitstream = np.array(pmt.to_python(pmt.cdr(msg)))
        except Exception:
            return
        if len(bitstream) < 256:
            return
        bytestream = np.packbits(bitstream)
        if len(bytestream) < 32:
            return

        outgoing_msg = pmt.init_u8vector(len(bytestream), (bytestream))
        pdu = pmt.cons(pmt.make_dict(), outgoing_msg)
        self.message_port_pub(pmt.intern('PDU_out'), pdu)