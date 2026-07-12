"""
CCSDS Additive Descrambler
Compliant with CCSDS 131.0-B-5 Section 10
Applying twice returns the original message.
"""

import numpy as np
from gnuradio import gr
import pmt


class blk(gr.sync_block):
    def __init__(self):
        gr.sync_block.__init__(
            self,
            name='CCSDS Additive Scrambler',
            in_sig=None,
            out_sig=None)

        self.pn_lut = np.zeros(255, dtype=np.uint8)
        self.generate_pn_lut()

        self.message_port_register_in(pmt.intern('PDU_in'))
        self.message_port_register_out(pmt.intern('PDU_out'))
        self.set_msg_handler(pmt.intern('PDU_in'), self.handle_msg)

    def handle_msg(self, msg):
        bitstream = np.array(pmt.to_python(pmt.cdr(msg)))
        scr_bitstream = np.zeros(len(bitstream), dtype=np.uint8)
        for i in range(len(bitstream)):
            scr_bitstream[i] = np.uint8(bitstream[i]) ^ np.uint8(self.pn_lut[i%255])

        outgoing_msg = pmt.init_u8vector(len(scr_bitstream), (scr_bitstream))
        pdu = pmt.cons(pmt.make_dict(), outgoing_msg)
        self.message_port_pub(pmt.intern('PDU_out'), pdu)

    def generate_pn_lut(self):
        sr = 0b11111111
        for i in range(255):
            self.pn_lut[i] = sr & 1
            nb = self.pn_xor(sr)
            sr = sr >> 1
            sr = sr | (nb << 7)

    def pn_xor(self, sr):
        return (((sr & 0b01) >> 0) ^ ((sr & 0b00001000) >> 3) ^ ((sr & 0b00100000) >> 5) ^ ((sr & 0b10000000) >> 7)) & 1