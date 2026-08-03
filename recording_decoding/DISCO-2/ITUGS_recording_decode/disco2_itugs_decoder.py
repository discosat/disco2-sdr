#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: DISCO-2 ITU-GS Example Decoder
# Author: Luis Landa
# Description: Decodes many recordings done by ITU's ground station
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
from gnuradio import zeromq
import disco2_itugs_decoder_epy_block_0_0 as epy_block_0_0  # embedded python block
import disco2_itugs_decoder_epy_block_0_1 as epy_block_0_1  # embedded python block
import disco2_itugs_decoder_epy_block_1 as epy_block_1  # embedded python block
import disco2_itugs_decoder_epy_block_2 as epy_block_2  # embedded python block
import satellites
import satellites.components.demodulators
import satellites.hier
import sip
import threading



class disco2_itugs_decoder(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "DISCO-2 ITU-GS Example Decoder", catch_exceptions=True)
        Qt.QWidget.__init__(self)
        self.setWindowTitle("DISCO-2 ITU-GS Example Decoder")
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

        self.settings = Qt.QSettings("gnuradio/flowgraphs", "disco2_itugs_decoder")

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
        self.samp_rate = samp_rate = 500000
        self.fm_gain = fm_gain = 5
        self.filter_bw = filter_bw = 6000
        self.decimation = decimation = 10

        ##################################################
        # Blocks
        ##################################################

        self._fm_gain_range = qtgui.Range(1, 20, 0.5, 5, 200)
        self._fm_gain_win = qtgui.RangeWidget(self._fm_gain_range, self.set_fm_gain, "FM Gain", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._fm_gain_win)
        self._filter_bw_range = qtgui.Range(2000, 30000, 500, 6000, 200)
        self._filter_bw_win = qtgui.RangeWidget(self._filter_bw_range, self.set_filter_bw, "Filter BW", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._filter_bw_win)
        self.zeromq_pub_msg_sink_0 = zeromq.pub_msg_sink('tcp://127.0.0.1:5555', 100, True)
        self.satellites_sync_to_pdu_0 = satellites.hier.sync_to_pdu(
            packlen=1200,
            sync="0101010101010101010101010111111010101010",
            threshold=2,
        )
        self.satellites_fsk_demodulator_1 = satellites.components.demodulators.fsk_demodulator(baudrate = 4800, samp_rate = samp_rate/decimation, iq = False, subaudio = False, options="")
        self.satellites_doppler_correction_0 = satellites.doppler_correction('/home/luisito/Development/ITU/space/decode june tests/June 2026/2026-06-17/doppler.txt', samp_rate, 1781699223.000000, "")
        self.satellites_decode_rs_ccsds_0 = satellites.decode_rs(False, 1)
        self.qtgui_sink_x_0 = qtgui.sink_c(
            2048, #fftsize
            window.WIN_BLACKMAN_hARRIS, #wintype
            437075000, #fc
            20000, #bw
            'After-filter GUI Sink', #name
            False, #plotfreq
            True, #plotwaterfall
            True, #plottime
            True, #plotconst
            None # parent
        )
        self.qtgui_sink_x_0.set_update_time(1.0/100)
        self._qtgui_sink_x_0_win = sip.wrapinstance(self.qtgui_sink_x_0.qwidget(), Qt.QWidget)

        self.qtgui_sink_x_0.enable_rf_freq(True)

        self.top_layout.addWidget(self._qtgui_sink_x_0_win)
        self.freq_xlating_fir_filter_xxx_0 = filter.freq_xlating_fir_filter_ccc(decimation, firdes.complex_band_pass(1, samp_rate, -filter_bw/2, filter_bw/2, 1000), 0, samp_rate)
        self.epy_block_2 = epy_block_2.blk()
        self.epy_block_1 = epy_block_1.msg_block()
        self.epy_block_0_1 = epy_block_0_1.blk()
        self.epy_block_0_0 = epy_block_0_0.msg_block()
        self.digital_binary_slicer_fb_1 = digital.binary_slicer_fb()
        self.blocks_message_debug_1 = blocks.message_debug(True, gr.log_levels.info)
        self.blocks_file_source_0 = blocks.file_source(gr.sizeof_gr_complex*1, '/home/luisito/Development/ITU/space/decode june tests/June 2026/2026-06-17/gqrx_20260617_122703_437075000_500000_fc.raw', False, 0, 0)
        self.blocks_file_source_0.set_begin_tag(pmt.PMT_NIL)
        self.analog_simple_squelch_cc_0 = analog.simple_squelch_cc((-90), 1)
        self.analog_quadrature_demod_cf_0 = analog.quadrature_demod_cf(fm_gain)
        self.analog_agc_xx_0 = analog.agc_cc((1e-4), 1.0, 1, 65536)


        ##################################################
        # Connections
        ##################################################
        self.msg_connect((self.epy_block_0_0, 'pdu_out'), (self.epy_block_0_1, 'PDU_in'))
        self.msg_connect((self.epy_block_0_1, 'PDU_out'), (self.epy_block_2, 'PDU_in'))
        self.msg_connect((self.epy_block_1, 'msg_out'), (self.epy_block_0_0, 'msg_in'))
        self.msg_connect((self.epy_block_2, 'PDU_out'), (self.satellites_decode_rs_ccsds_0, 'in'))
        self.msg_connect((self.satellites_decode_rs_ccsds_0, 'out'), (self.blocks_message_debug_1, 'print'))
        self.msg_connect((self.satellites_decode_rs_ccsds_0, 'out'), (self.zeromq_pub_msg_sink_0, 'in'))
        self.msg_connect((self.satellites_sync_to_pdu_0, 'out'), (self.epy_block_1, 'msg_in'))
        self.connect((self.analog_agc_xx_0, 0), (self.analog_quadrature_demod_cf_0, 0))
        self.connect((self.analog_quadrature_demod_cf_0, 0), (self.satellites_fsk_demodulator_1, 0))
        self.connect((self.analog_simple_squelch_cc_0, 0), (self.analog_agc_xx_0, 0))
        self.connect((self.blocks_file_source_0, 0), (self.satellites_doppler_correction_0, 0))
        self.connect((self.digital_binary_slicer_fb_1, 0), (self.satellites_sync_to_pdu_0, 0))
        self.connect((self.freq_xlating_fir_filter_xxx_0, 0), (self.analog_simple_squelch_cc_0, 0))
        self.connect((self.freq_xlating_fir_filter_xxx_0, 0), (self.qtgui_sink_x_0, 0))
        self.connect((self.satellites_doppler_correction_0, 0), (self.freq_xlating_fir_filter_xxx_0, 0))
        self.connect((self.satellites_fsk_demodulator_1, 0), (self.digital_binary_slicer_fb_1, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("gnuradio/flowgraphs", "disco2_itugs_decoder")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.blocks_throttle2_0.set_sample_rate(self.samp_rate)
        self.freq_xlating_fir_filter_xxx_0.set_taps(firdes.complex_band_pass(1, self.samp_rate, -self.filter_bw/2, self.filter_bw/2, 1000))

    def get_fm_gain(self):
        return self.fm_gain

    def set_fm_gain(self, fm_gain):
        self.fm_gain = fm_gain
        self.analog_quadrature_demod_cf_0.set_gain(self.fm_gain)

    def get_filter_bw(self):
        return self.filter_bw

    def set_filter_bw(self, filter_bw):
        self.filter_bw = filter_bw
        self.freq_xlating_fir_filter_xxx_0.set_taps(firdes.complex_band_pass(1, self.samp_rate, -self.filter_bw/2, self.filter_bw/2, 1000))

    def get_decimation(self):
        return self.decimation

    def set_decimation(self, decimation):
        self.decimation = decimation




def main(top_block_cls=disco2_itugs_decoder, options=None):

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
