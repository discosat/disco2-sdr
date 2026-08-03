"""
HDLC Deframer
Removes the trailing HDLC flag from sync_to_pdu output
"""

from gnuradio import gr
import numpy as np
import pmt

class msg_block(gr.basic_block):
    def __init__(self):
        gr.basic_block.__init__(
            self,
            name="HDLC Deframer",
            in_sig=None,
            out_sig=None)

        self.message_port_register_in(pmt.intern('msg_in'))
        self.message_port_register_out(pmt.intern('msg_out'))
        self.set_msg_handler(pmt.intern('msg_in'), self.handle_msg)

    def handle_msg(self, msg):
        bitstream = np.array(pmt.to_python(pmt.cdr(msg)))

        hdlc_flag = np.array([0,1,1,1,1,1,1,0])
        hdlc_index = 0
        for i in range(len(bitstream)-len(hdlc_flag)):
            bitstream_snippet = bitstream[i:i+len(hdlc_flag)]
            if np.array_equal(bitstream_snippet, hdlc_flag):
                hdlc_index = i
                break

        hdlc_frame = bitstream[0:hdlc_index]
        outgoing_msg = pmt.to_pmt(hdlc_frame)
        self.message_port_pub(pmt.intern('msg_out'), outgoing_msg)