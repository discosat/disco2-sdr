"""
HDLC Bit De-stuffer
Removes one bit preceded by five consecutive ones (HDLC bit-stuffing)
"""

from gnuradio import gr
import numpy as np
import pmt

class msg_block(gr.basic_block):
    def __init__(self):
        gr.basic_block.__init__(
            self,
            name="Bit de-stuffer",
            in_sig=None,
            out_sig=None)

        self.message_port_register_in(pmt.intern('msg_in'))
        self.message_port_register_out(pmt.intern('pdu_out'))
        self.set_msg_handler(pmt.intern('msg_in'), self.handle_msg)

    def handle_msg(self, msg):
        bitstream = np.array(pmt.to_python(msg))

        compare_array = np.array([1,1,1,1,1])
        for i in range(len(bitstream)-5):
            if np.array_equal(bitstream[i:i+5], compare_array):
                bitstream[i+5] = 2

        bitstream_destuffed = np.delete(bitstream, np.where(bitstream == 2))

        outgoing_msg = pmt.init_u8vector(len(bitstream_destuffed), (bitstream_destuffed))
        pdu = pmt.cons(pmt.make_dict(), outgoing_msg)
        self.message_port_pub(pmt.intern('pdu_out'), pdu)