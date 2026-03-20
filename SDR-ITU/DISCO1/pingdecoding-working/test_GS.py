#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Not titled yet
# GNU Radio version: 3.10.9.2

from PyQt5 import Qt
from gnuradio import qtgui
from PyQt5 import QtCore
from gnuradio import analog
import math
from gnuradio import blocks, gr
from gnuradio import digital
from gnuradio import disco
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
from gnuradio import uhd
import time
import satellites
import satellites.components.demodulators
import satellites.hier
import sip
import test_GS_epy_block_0_0 as epy_block_0_0  # embedded python block
import test_GS_epy_block_0_1 as epy_block_0_1  # embedded python block
import test_GS_epy_block_1 as epy_block_1  # embedded python block
import test_GS_epy_block_2 as epy_block_2  # embedded python block



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

        self.settings = Qt.QSettings("GNU Radio", "test_GS")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)

        ##################################################
        # Variables
        ##################################################
        self.squelch_range = squelch_range = -50
        self.samp_rate = samp_rate = 8e6
        self.decimation = decimation = 100
        self.center_freq = center_freq = 437e6

        ##################################################
        # Blocks
        ##################################################

        self._squelch_range_range = qtgui.Range(-150, -40, 5, -50, 200)
        self._squelch_range_win = qtgui.RangeWidget(self._squelch_range_range, self.set_squelch_range, "'squelch_range'", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._squelch_range_win)
        self.uhd_usrp_source_0 = uhd.usrp_source(
            ",".join(("", '')),
            uhd.stream_args(
                cpu_format="fc32",
                args='',
                channels=list(range(0,1)),
            ),
        )
        self.uhd_usrp_source_0.set_samp_rate(samp_rate)
        self.uhd_usrp_source_0.set_time_now(uhd.time_spec(time.time()), uhd.ALL_MBOARDS)

        self.uhd_usrp_source_0.set_center_freq(center_freq, 0)
        self.uhd_usrp_source_0.set_antenna("RX2", 0)
        self.uhd_usrp_source_0.set_bandwidth(samp_rate, 0)
        self.uhd_usrp_source_0.set_gain(80, 0)
        self.satellites_sync_to_pdu_0 = satellites.hier.sync_to_pdu(
            packlen=689,
            sync="0101010101010101010101010111111010101010",
            threshold=0,
        )
        self.satellites_fsk_demodulator_1 = satellites.components.demodulators.fsk_demodulator(baudrate = 4800, samp_rate = samp_rate/decimation, iq = False, subaudio = False, options="")
        self.satellites_decode_rs_ccsds_0 = satellites.decode_rs(False, 1)
        self.qtgui_sink_x_0_0 = qtgui.sink_c(
            1024, #fftsize
            window.WIN_BLACKMAN_hARRIS, #wintype
            437.075e6, #fc
            samp_rate, #bw
            "After Filter", #name
            True, #plotfreq
            True, #plotwaterfall
            True, #plottime
            True, #plotconst
            None # parent
        )
        self.qtgui_sink_x_0_0.set_update_time(1.0/10)
        self._qtgui_sink_x_0_0_win = sip.wrapinstance(self.qtgui_sink_x_0_0.qwidget(), Qt.QWidget)

        self.qtgui_sink_x_0_0.enable_rf_freq(True)

        self.top_layout.addWidget(self._qtgui_sink_x_0_0_win)
        self.qtgui_number_sink_0 = qtgui.number_sink(
            gr.sizeof_float,
            0,
            qtgui.NUM_GRAPH_HORIZ,
            1,
            None # parent
        )
        self.qtgui_number_sink_0.set_update_time(0.10)
        self.qtgui_number_sink_0.set_title("")

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        units = ['', '', '', '', '',
            '', '', '', '', '']
        colors = [("black", "black"), ("black", "black"), ("black", "black"), ("black", "black"), ("black", "black"),
            ("black", "black"), ("black", "black"), ("black", "black"), ("black", "black"), ("black", "black")]
        factor = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]

        for i in range(1):
            self.qtgui_number_sink_0.set_min(i, -1)
            self.qtgui_number_sink_0.set_max(i, 1)
            self.qtgui_number_sink_0.set_color(i, colors[i][0], colors[i][1])
            if len(labels[i]) == 0:
                self.qtgui_number_sink_0.set_label(i, "Data {0}".format(i))
            else:
                self.qtgui_number_sink_0.set_label(i, labels[i])
            self.qtgui_number_sink_0.set_unit(i, units[i])
            self.qtgui_number_sink_0.set_factor(i, factor[i])

        self.qtgui_number_sink_0.enable_autoscale(False)
        self._qtgui_number_sink_0_win = sip.wrapinstance(self.qtgui_number_sink_0.qwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_number_sink_0_win)
        self.freq_xlating_fir_filter_xxx_0_1_0 = filter.freq_xlating_fir_filter_ccc(decimation, firdes.complex_band_pass(1, samp_rate, -30e3, 30e3, 1e3), 0, samp_rate)
        self.epy_block_2 = epy_block_2.blk()
        self.epy_block_1 = epy_block_1.msg_block()
        self.epy_block_0_1 = epy_block_0_1.blk()
        self.epy_block_0_0 = epy_block_0_0.msg_block()
        self.disco_ZMQ_sink_0 = disco.ZMQ_sink('tcp://127.0.0.1:5555')
        self.digital_binary_slicer_fb_1 = digital.binary_slicer_fb()
        self.blocks_message_debug_1 = blocks.message_debug(True, gr.log_levels.trace)
        self.analog_simple_squelch_cc_0 = analog.simple_squelch_cc(squelch_range, 1)
        self.analog_quadrature_demod_cf_0 = analog.quadrature_demod_cf(((samp_rate/decimation)/(2*math.pi*2400)))
        self.analog_agc_xx_0 = analog.agc_cc((1e-4), 1.0, 1, 65536)


        ##################################################
        # Connections
        ##################################################
        self.msg_connect((self.epy_block_0_0, 'pdu_out'), (self.epy_block_0_1, 'PDU_in'))
        self.msg_connect((self.epy_block_0_1, 'PDU_out'), (self.epy_block_2, 'PDU_in'))
        self.msg_connect((self.epy_block_1, 'msg_out'), (self.epy_block_0_0, 'msg_in'))
        self.msg_connect((self.epy_block_2, 'PDU_out'), (self.satellites_decode_rs_ccsds_0, 'in'))
        self.msg_connect((self.satellites_decode_rs_ccsds_0, 'out'), (self.blocks_message_debug_1, 'print'))
        self.msg_connect((self.satellites_decode_rs_ccsds_0, 'out'), (self.disco_ZMQ_sink_0, 'PDU_in'))
        self.msg_connect((self.satellites_sync_to_pdu_0, 'out'), (self.epy_block_1, 'msg_in'))
        self.connect((self.analog_agc_xx_0, 0), (self.analog_quadrature_demod_cf_0, 0))
        self.connect((self.analog_quadrature_demod_cf_0, 0), (self.satellites_fsk_demodulator_1, 0))
        self.connect((self.analog_simple_squelch_cc_0, 0), (self.analog_agc_xx_0, 0))
        self.connect((self.analog_simple_squelch_cc_0, 0), (self.qtgui_sink_x_0_0, 0))
        self.connect((self.digital_binary_slicer_fb_1, 0), (self.satellites_sync_to_pdu_0, 0))
        self.connect((self.freq_xlating_fir_filter_xxx_0_1_0, 0), (self.analog_simple_squelch_cc_0, 0))
        self.connect((self.satellites_fsk_demodulator_1, 0), (self.digital_binary_slicer_fb_1, 0))
        self.connect((self.satellites_fsk_demodulator_1, 0), (self.qtgui_number_sink_0, 0))
        self.connect((self.uhd_usrp_source_0, 0), (self.freq_xlating_fir_filter_xxx_0_1_0, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "test_GS")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_squelch_range(self):
        return self.squelch_range

    def set_squelch_range(self, squelch_range):
        self.squelch_range = squelch_range
        self.analog_simple_squelch_cc_0.set_threshold(self.squelch_range)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_quadrature_demod_cf_0.set_gain(((self.samp_rate/self.decimation)/(2*math.pi*2400)))
        self.freq_xlating_fir_filter_xxx_0_1_0.set_taps(firdes.complex_band_pass(1, self.samp_rate, -30e3, 30e3, 1e3))
        self.qtgui_sink_x_0_0.set_frequency_range(437.075e6, self.samp_rate)
        self.uhd_usrp_source_0.set_samp_rate(self.samp_rate)
        self.uhd_usrp_source_0.set_bandwidth(self.samp_rate, 0)

    def get_decimation(self):
        return self.decimation

    def set_decimation(self, decimation):
        self.decimation = decimation
        self.analog_quadrature_demod_cf_0.set_gain(((self.samp_rate/self.decimation)/(2*math.pi*2400)))

    def get_center_freq(self):
        return self.center_freq

    def set_center_freq(self, center_freq):
        self.center_freq = center_freq
        self.uhd_usrp_source_0.set_center_freq(self.center_freq, 0)




def main(top_block_cls=test_GS, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()

    tb.start()

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
