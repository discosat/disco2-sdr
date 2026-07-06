#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Not titled yet
# GNU Radio version: 3.10.12.0

from PyQt5 import Qt
from gnuradio import qtgui
from PyQt5 import QtCore
from gnuradio import analog
import math
from gnuradio import blocks
import pmt
from gnuradio import blocks, gr
from gnuradio import digital
from gnuradio import filter
from gnuradio.filter import firdes
from gnuradio import gr
from gnuradio.fft import window
import sys
import signal
from PyQt5 import Qt
from argparse import ArgumentParser
from gnuradio.eng_arg import eng_float, intx
from gnuradio import eng_notation
import satellites
import satellites.components.demodulators
import satellites.hier
import sip
import test_GS_epy_block_0_0 as epy_block_0_0  # embedded python block
import test_GS_epy_block_0_1 as epy_block_0_1  # embedded python block
import test_GS_epy_block_1 as epy_block_1  # embedded python block
import test_GS_epy_block_2 as epy_block_2  # embedded python block
import threading



class test_GS(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Not titled yet", catch_exceptions=True)
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Not titled yet")
        qtgui.util.check_set_qss()
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except BaseException as exc:
            print(f"Qt GUI: Could not set Icon: {str(exc)}", file=sys.stderr)
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("gnuradio/flowgraphs", "test_GS")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)
        self.flowgraph_started = threading.Event()

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 4000000
        self.center_var = center_var = 83000

        ##################################################
        # Blocks
        ##################################################

        self.satellites_sync_to_pdu_0 = satellites.hier.sync_to_pdu(
            packlen=689,
            sync="0101010101010101010101010111111010101010",
            threshold=0,
        )
        self.satellites_fsk_demodulator_1 = satellites.components.demodulators.fsk_demodulator(baudrate = 4800, samp_rate = samp_rate/50, iq = False, subaudio = False, options="")
        self.satellites_decode_rs_ccsds_0 = satellites.decode_rs(False, 1)
        self.qtgui_sink_x_0 = qtgui.sink_c(
            1024, #fftsize
            window.WIN_BLACKMAN_hARRIS, #wintype
            437060000, #fc
            (samp_rate/50), #bw
            "", #name
            True, #plotfreq
            True, #plotwaterfall
            True, #plottime
            True, #plotconst
            None # parent
        )
        self.qtgui_sink_x_0.set_update_time(1.0/30)
        self._qtgui_sink_x_0_win = sip.wrapinstance(self.qtgui_sink_x_0.qwidget(), Qt.QWidget)

        self.qtgui_sink_x_0.enable_rf_freq(True)

        self.top_layout.addWidget(self._qtgui_sink_x_0_win)
        self.freq_xlating_fir_filter_xxx_0 = filter.freq_xlating_fir_filter_ccc(50, firdes.complex_band_pass(1, samp_rate, -20e3,20e3, 5e3), 10000, samp_rate)
        self.epy_block_2 = epy_block_2.blk()
        self.epy_block_1 = epy_block_1.msg_block()
        self.epy_block_0_1 = epy_block_0_1.blk()
        self.epy_block_0_0 = epy_block_0_0.msg_block()
        self.digital_binary_slicer_fb_1 = digital.binary_slicer_fb()
        self._center_var_range = qtgui.Range(-150000, 150000, 100, 83000, 200)
        self._center_var_win = qtgui.RangeWidget(self._center_var_range, self.set_center_var, "'center_var'", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._center_var_win)
        self.blocks_message_debug_1 = blocks.message_debug(True, gr.log_levels.info)
        self.blocks_file_source_0 = blocks.file_source(gr.sizeof_gr_complex*1, '/home/luisito/Development/ITU/space/decode/raw_data/gqrx_20260504_134331_437060000_4000000_fc.raw', True, 0, 0)
        self.blocks_file_source_0.set_begin_tag(pmt.PMT_NIL)
        self.analog_simple_squelch_cc_0 = analog.simple_squelch_cc((-90), 1)
        self.analog_quadrature_demod_cf_0 = analog.quadrature_demod_cf(5)
        self.analog_agc_xx_0 = analog.agc_cc((1e-4), 1.0, 1, 65536)


        ##################################################
        # Connections
        ##################################################
        self.msg_connect((self.epy_block_0_0, 'pdu_out'), (self.epy_block_0_1, 'PDU_in'))
        self.msg_connect((self.epy_block_0_1, 'PDU_out'), (self.epy_block_2, 'PDU_in'))
        self.msg_connect((self.epy_block_1, 'msg_out'), (self.epy_block_0_0, 'msg_in'))
        self.msg_connect((self.epy_block_2, 'PDU_out'), (self.satellites_decode_rs_ccsds_0, 'in'))
        self.msg_connect((self.satellites_decode_rs_ccsds_0, 'out'), (self.blocks_message_debug_1, 'print'))
        self.msg_connect((self.satellites_sync_to_pdu_0, 'out'), (self.epy_block_1, 'msg_in'))
        self.connect((self.analog_agc_xx_0, 0), (self.analog_quadrature_demod_cf_0, 0))
        self.connect((self.analog_quadrature_demod_cf_0, 0), (self.satellites_fsk_demodulator_1, 0))
        self.connect((self.analog_simple_squelch_cc_0, 0), (self.analog_agc_xx_0, 0))
        self.connect((self.analog_simple_squelch_cc_0, 0), (self.qtgui_sink_x_0, 0))
        self.connect((self.blocks_file_source_0, 0), (self.freq_xlating_fir_filter_xxx_0, 0))
        self.connect((self.digital_binary_slicer_fb_1, 0), (self.satellites_sync_to_pdu_0, 0))
        self.connect((self.freq_xlating_fir_filter_xxx_0, 0), (self.analog_simple_squelch_cc_0, 0))
        self.connect((self.satellites_fsk_demodulator_1, 0), (self.digital_binary_slicer_fb_1, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("gnuradio/flowgraphs", "test_GS")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.blocks_throttle2_0.set_sample_rate(self.samp_rate)
        self.freq_xlating_fir_filter_xxx_0.set_taps(firdes.complex_band_pass(1, self.samp_rate, -20e3,20e3, 5e3))
        self.qtgui_sink_x_0.set_frequency_range(437060000, (self.samp_rate/50))

    def get_center_var(self):
        return self.center_var

    def set_center_var(self, center_var):
        self.center_var = center_var




def main(top_block_cls=test_GS, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()

    tb.start()
    tb.flowgraph_started.set()

    tb.show()

    def sig_handler(sig=None, frame=None):
        tb.stop()
        tb.wait()

        Qt.QApplication.quit()

    signal.signal(signal.SIGINT, sig_handler)
    signal.signal(signal.SIGTERM, sig_handler)

    timer = Qt.QTimer()
    timer.start(500)
    timer.timeout.connect(lambda: None)

    qapp.exec_()

if __name__ == '__main__':
    main()
