
LOCAL_PATH:= $(call my-dir)

FF_INCLUDE := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/libavcodec \
    $(LOCAL_PATH)/libavcore \
    $(LOCAL_PATH)/libavdevice \
    $(LOCAL_PATH)/libavfilter \
    $(LOCAL_PATH)/libavformat \
    $(LOCAL_PATH)/libavutil \
    $(LOCAL_PATH)/libswscale

FF_COMMON_SRC := \
    libavcodec/allcodecs.c \
    libavcodec/audioconvert.c \
    libavcodec/avpacket.c \
    libavcodec/bitstream.c \
    libavcodec/bitstream_filter.c \
    libavcodec/dsputil.c \
    libavcodec/faanidct.c \
    libavcodec/fmtconvert.c \
    libavcodec/imgconvert.c \
    libavcodec/jrevdct.c \
    libavcodec/opt.c \
    libavcodec/options.c \
    libavcodec/parser.c \
    libavcodec/raw.c \
    libavcodec/resample.c \
    libavcodec/resample2.c \
    libavcodec/simple_idct.c \
    libavcodec/utils.c \
    libavcodec/aandcttab.c \
    libavcodec/dct.c \
    libavcodec/dwt.c \
    libavcodec/avfft.c \
    libavcodec/fft.c \
    libavcodec/golomb.c \
    libavcodec/h264dsp.c \
    libavcodec/h264idct.c \
    libavcodec/h264pred.c \
    libavcodec/huffman.c \
    libavcodec/lsp.c \
    libavcodec/mdct.c \
    libavcodec/rdft.c \
    libavcodec/aacdec.c \
    libavcodec/aactab.c \
    libavcodec/aacsbr.c \
    libavcodec/aacps.c \
    libavcodec/aacadtsdec.c \
    libavcodec/mpeg4audio.c \
    libavcodec/aasc.c \
    libavcodec/msrledec.c \
    libavcodec/ac3dec.c \
    libavcodec/ac3dec_data.c \
    libavcodec/ac3.c \
    libavcodec/alac.c \
    libavcodec/alsdec.c \
    libavcodec/bgmc.c \
    libavcodec/amrnbdec.c \
    libavcodec/celp_filters.c \
    libavcodec/celp_math.c \
    libavcodec/acelp_filters.c \
    libavcodec/acelp_vectors.c \
    libavcodec/acelp_pitch_delay.c \
    libavcodec/amrwbdec.c \
    libavcodec/sp5xdec.c \
    libavcodec/mjpegdec.c \
    libavcodec/mjpeg.c \
    libavcodec/anm.c \
    libavcodec/ansi.c \
    libavcodec/cga_data.c \
    libavcodec/apedec.c \
    libavcodec/assdec.c \
    libavcodec/ass.c \
    libavcodec/asv1.c \
    libavcodec/mpeg12data.c \
    libavcodec/atrac1.c \
    libavcodec/atrac.c \
    libavcodec/atrac3.c \
    libavcodec/cyuv.c \
    libavcodec/aura.c \
    libavcodec/avs.c \
    libavcodec/bethsoftvideo.c \
    libavcodec/bfi.c \
    libavcodec/bink.c \
    libavcodec/binkidct.c \
    libavcodec/binkaudio.c \
    libavcodec/wma.c \
    libavcodec/bmp.c \
    libavcodec/c93.c \
    libavcodec/cavs.c \
    libavcodec/cavsdec.c \
    libavcodec/cavsdsp.c \
    libavcodec/mpegvideo.c \
    libavcodec/cdgraphics.c \
    libavcodec/cinepak.c \
    libavcodec/cljr.c \
    libavcodec/cook.c \
    libavcodec/cscd.c \
    libavcodec/dca.c \
    libavcodec/synth_filter.c \
    libavcodec/dcadsp.c \
    libavcodec/dnxhddec.c \
    libavcodec/dnxhddata.c \
    libavcodec/dpx.c \
    libavcodec/dsicinav.c \
    libavcodec/dvbsubdec.c \
    libavcodec/dvdsubdec.c \
    libavcodec/dv.c \
    libavcodec/dvdata.c \
    libavcodec/dxa.c \
    libavcodec/eac3dec.c \
    libavcodec/eac3dec_data.c \
    libavcodec/eacmv.c \
    libavcodec/eamad.c \
    libavcodec/eaidct.c \
    libavcodec/mpeg12.c \
    libavcodec/error_resilience.c \
    libavcodec/eatgq.c \
    libavcodec/eatgv.c \
    libavcodec/eatqi.c \
    libavcodec/8bps.c \
    libavcodec/8svx.c \
    libavcodec/escape124.c \
    libavcodec/ffv1.c \
    libavcodec/rangecoder.c \
    libavcodec/huffyuv.c \
    libavcodec/flacdec.c \
    libavcodec/flacdata.c \
    libavcodec/flac.c \
    libavcodec/flashsv.c \
    libavcodec/flicvideo.c \
    libavcodec/4xm.c \
    libavcodec/fraps.c \
    libavcodec/frwu.c \
    libavcodec/gifdec.c \
    libavcodec/lzw.c \
    libavcodec/gsmdec.c \
    libavcodec/gsmdec_data.c \
    libavcodec/msgsmdec.c \
    libavcodec/h261dec.c \
    libavcodec/h261.c \
    libavcodec/h263dec.c \
    libavcodec/h263.c \
    libavcodec/ituh263dec.c \
    libavcodec/mpeg4video.c \
    libavcodec/mpeg4videodec.c \
    libavcodec/flvdec.c \
    libavcodec/intelh263dec.c \
    libavcodec/h264.c \
    libavcodec/h264_loopfilter.c \
    libavcodec/h264_direct.c \
    libavcodec/cabac.c \
    libavcodec/h264_sei.c \
    libavcodec/h264_ps.c \
    libavcodec/h264_refs.c \
    libavcodec/h264_cavlc.c \
    libavcodec/h264_cabac.c \
    libavcodec/idcinvideo.c \
    libavcodec/iff.c \
    libavcodec/imc.c \
    libavcodec/indeo2.c \
    libavcodec/indeo3.c \
    libavcodec/indeo5.c \
    libavcodec/ivi_common.c \
    libavcodec/ivi_dsp.c \
    libavcodec/dpcm.c \
    libavcodec/interplayvideo.c \
    libavcodec/jpeglsdec.c \
    libavcodec/jpegls.c \
    libavcodec/kgv1dec.c \
    libavcodec/kmvc.c \
    libavcodec/lagarith.c \
    libavcodec/lagarithrac.c \
    libavcodec/loco.c \
    libavcodec/mace.c \
    libavcodec/mdec.c \
    libavcodec/mimic.c \
    libavcodec/mjpegbdec.c \
    libavcodec/mlpdec.c \
    libavcodec/mlpdsp.c \
    libavcodec/mmvideo.c \
    libavcodec/motionpixels.c \
    libavcodec/mpegaudiodec.c \
    libavcodec/mpegaudiodecheader.c \
    libavcodec/mpegaudio.c \
    libavcodec/mpegaudiodata.c \
    libavcodec/mpegaudiodec_float.c \
    libavcodec/mpc7.c \
    libavcodec/mpc.c \
    libavcodec/mpc8.c \
    libavcodec/msmpeg4.c \
    libavcodec/msmpeg4data.c \
    libavcodec/msrle.c \
    libavcodec/msvideo1.c \
    libavcodec/lcldec.c \
    libavcodec/nellymoserdec.c \
    libavcodec/nellymoser.c \
    libavcodec/nuv.c \
    libavcodec/rtjpeg.c \
    libavcodec/pnmdec.c \
    libavcodec/pnm.c \
    libavcodec/pcx.c \
    libavcodec/pgssubdec.c \
    libavcodec/pictordec.c \
    libavcodec/png.c \
    libavcodec/pngdec.c \
    libavcodec/ptx.c \
    libavcodec/qcelpdec.c \
    libavcodec/qdm2.c \
    libavcodec/qdrw.c \
    libavcodec/qpeg.c \
    libavcodec/qtrle.c \
    libavcodec/r210dec.c \
    libavcodec/ra144dec.c \
    libavcodec/ra144.c \
    libavcodec/ra288.c \
    libavcodec/rawdec.c \
    libavcodec/rl2.c \
    libavcodec/roqvideodec.c \
    libavcodec/roqvideo.c \
    libavcodec/rpza.c \
    libavcodec/rv10.c \
    libavcodec/rv30.c \
    libavcodec/rv34.c \
    libavcodec/rv30dsp.c \
    libavcodec/rv40.c \
    libavcodec/rv40dsp.c \
    libavcodec/sgidec.c \
    libavcodec/shorten.c \
    libavcodec/sipr.c \
    libavcodec/sipr16k.c \
    libavcodec/smacker.c \
    libavcodec/smc.c \
    libavcodec/snow.c \
    libavcodec/sonic.c \
    libavcodec/srtdec.c \
    libavcodec/sunrast.c \
    libavcodec/svq1dec.c \
    libavcodec/svq1.c \
    libavcodec/svq3.c \
    libavcodec/targa.c \
    libavcodec/xiph.c \
    libavcodec/tiertexseqv.c \
    libavcodec/tiff.c \
    libavcodec/faxcompr.c \
    libavcodec/tmv.c \
    libavcodec/truemotion1.c \
    libavcodec/truemotion2.c \
    libavcodec/truespeech.c \
    libavcodec/tscc.c \
    libavcodec/tta.c \
    libavcodec/twinvq.c \
    libavcodec/txd.c \
    libavcodec/s3tc.c \
    libavcodec/ulti.c \
    libavcodec/v210dec.c \
    libavcodec/v210x.c \
    libavcodec/vb.c \
    libavcodec/vc1dec.c \
    libavcodec/vc1.c \
    libavcodec/vc1data.c \
    libavcodec/vc1dsp.c \
    libavcodec/intrax8.c \
    libavcodec/intrax8dsp.c \
    libavcodec/vcr1.c \
    libavcodec/vmdav.c \
    libavcodec/vmnc.c \
    libavcodec/vorbis_dec.c \
    libavcodec/vorbis.c \
    libavcodec/vorbis_data.c \
    libavcodec/vp3.c \
    libavcodec/vp3dsp.c \
    libavcodec/vp5.c \
    libavcodec/vp56.c \
    libavcodec/vp56data.c \
    libavcodec/vp56dsp.c \
    libavcodec/vp56rac.c \
    libavcodec/vp6.c \
    libavcodec/vp6dsp.c \
    libavcodec/vp8.c \
    libavcodec/vp8dsp.c \
    libavcodec/vqavideo.c \
    libavcodec/wavpack.c \
    libavcodec/wmaprodec.c \
    libavcodec/wmadec.c \
    libavcodec/wmavoice.c \
    libavcodec/wmv2dec.c \
    libavcodec/wmv2.c \
    libavcodec/wnv1.c \
    libavcodec/ws-snd1.c \
    libavcodec/xan.c \
    libavcodec/xl.c \
    libavcodec/xsubdec.c \
    libavcodec/yop.c \
    libavcodec/zmbv.c \
    libavcodec/pcm.c \
    libavcodec/pcm-mpeg.c \
    libavcodec/adpcm.c \
    libavcodec/adxdec.c \
    libavcodec/g722.c \
    libavcodec/g726.c \
    libavcodec/dirac.c \
    libavcodec/aac_parser.c \
    libavcodec/aac_ac3_parser.c \
    libavcodec/ac3_parser.c \
    libavcodec/ac3tab.c \
    libavcodec/cavs_parser.c \
    libavcodec/dca_parser.c \
    libavcodec/dirac_parser.c \
    libavcodec/dnxhd_parser.c \
    libavcodec/dvbsub_parser.c \
    libavcodec/dvdsub_parser.c \
    libavcodec/flac_parser.c \
    libavcodec/h261_parser.c \
    libavcodec/h263_parser.c \
    libavcodec/h264_parser.c \
    libavcodec/latm_parser.c \
    libavcodec/mjpeg_parser.c \
    libavcodec/mlp_parser.c \
    libavcodec/mlp.c \
    libavcodec/mpeg4video_parser.c \
    libavcodec/mpegaudio_parser.c \
    libavcodec/mpegvideo_parser.c \
    libavcodec/pnm_parser.c \
    libavcodec/vc1_parser.c \
    libavcodec/vp3_parser.c \
    libavcodec/vp8_parser.c \
    libavcodec/pthread.c \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/vp56dsp_init_arm.c \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/dsputil_init_armv5te.c \
    libavcodec/arm/mpegvideo_armv5te.c \
    libavcodec/arm/mpegvideo_armv5te_s.S \
    libavcodec/arm/simple_idct_armv5te.S \
    libavcore/audioconvert.c \
    libavcore/imgutils.c \
    libavcore/parseutils.c \
    libavcore/samplefmt.c \
    libavcore/utils.c \
    libavdevice/alldevices.c \
    libavdevice/avdevice.c \
    libavfilter/allfilters.c \
    libavfilter/avfilter.c \
    libavfilter/avfiltergraph.c \
    libavfilter/defaults.c \
    libavfilter/formats.c \
    libavfilter/graphparser.c \
    libavfilter/af_anull.c \
    libavfilter/asrc_anullsrc.c \
    libavfilter/asink_anullsink.c \
    libavfilter/vf_copy.c \
    libavfilter/vf_crop.c \
    libavfilter/vf_drawbox.c \
    libavfilter/vf_fifo.c \
    libavfilter/vf_format.c \
    libavfilter/vf_gradfun.c \
    libavfilter/vf_hflip.c \
    libavfilter/vf_null.c \
    libavfilter/vf_overlay.c \
    libavfilter/vf_pad.c \
    libavfilter/vf_pixdesctest.c \
    libavfilter/vf_scale.c \
    libavfilter/vf_aspect.c \
    libavfilter/vf_setpts.c \
    libavfilter/vf_settb.c \
    libavfilter/vf_slicify.c \
    libavfilter/vf_transpose.c \
    libavfilter/vf_unsharp.c \
    libavfilter/vf_vflip.c \
    libavfilter/vsrc_buffer.c \
    libavfilter/vsrc_nullsrc.c \
    libavfilter/vsink_nullsink.c \
    libavformat/allformats.c \
    libavformat/cutils.c \
    libavformat/id3v1.c \
    libavformat/id3v2.c \
    libavformat/metadata.c \
    libavformat/metadata_compat.c \
    libavformat/options.c \
    libavformat/os_support.c \
    libavformat/sdp.c \
    libavformat/seek.c \
    libavformat/utils.c \
    libavformat/avio.c \
    libavformat/aviobuf.c \
    libavformat/aacdec.c \
    libavformat/rawdec.c \
    libavformat/ac3dec.c \
    libavformat/aea.c \
    libavformat/pcm.c \
    libavformat/aiffdec.c \
    libavformat/riff.c \
    libavformat/amr.c \
    libavformat/anm.c \
    libavformat/apc.c \
    libavformat/ape.c \
    libavformat/apetag.c \
    libavformat/applehttp.c \
    libavformat/asfdec.c \
    libavformat/asf.c \
    libavformat/asfcrypt.c \
    libavformat/avlanguage.c \
    libavformat/assdec.c \
    libavformat/au.c \
    libavformat/avidec.c \
    libavformat/avi.c \
    libavformat/avs.c \
    libavformat/vocdec.c \
    libavformat/voc.c \
    libavformat/bethsoftvid.c \
    libavformat/bfi.c \
    libavformat/bink.c \
    libavformat/c93.c \
    libavformat/cafdec.c \
    libavformat/caf.c \
    libavformat/mov.c \
    libavformat/isom.c \
    libavformat/cavsvideodec.c \
    libavformat/cdg.c \
    libavformat/daud.c \
    libavformat/diracdec.c \
    libavformat/dnxhddec.c \
    libavformat/dsicin.c \
    libavformat/dtsdec.c \
    libavformat/dv.c \
    libavformat/dxa.c \
    libavformat/eacdata.c \
    libavformat/electronicarts.c \
    libavformat/ffmdec.c \
    libavformat/ffmetadec.c \
    libavformat/filmstripdec.c \
    libavformat/flacdec.c \
    libavformat/oggparsevorbis.c \
    libavformat/vorbiscomment.c \
    libavformat/flic.c \
    libavformat/flvdec.c \
    libavformat/4xm.c \
    libavformat/gxf.c \
    libavformat/h261dec.c \
    libavformat/h263dec.c \
    libavformat/h264dec.c \
    libavformat/idcin.c \
    libavformat/iff.c \
    libavformat/img2.c \
    libavformat/ingenientdec.c \
    libavformat/ipmovie.c \
    libavformat/iss.c \
    libavformat/iv8.c \
    libavformat/ivfdec.c \
    libavformat/lmlm4.c \
    libavformat/lxfdec.c \
    libavformat/m4vdec.c \
    libavformat/matroskadec.c \
    libavformat/matroska.c \
    libavformat/rmdec.c \
    libavformat/rm.c \
    libavformat/mm.c \
    libavformat/mmf.c \
    libavformat/mp3dec.c \
    libavformat/mpc.c \
    libavformat/mpc8.c \
    libavformat/mpeg.c \
    libavformat/mpegts.c \
    libavformat/mpegvideodec.c \
    libavformat/msnwc_tcp.c \
    libavformat/mtv.c \
    libavformat/mvi.c \
    libavformat/mxfdec.c \
    libavformat/mxf.c \
    libavformat/mxg.c \
    libavformat/ncdec.c \
    libavformat/nsvdec.c \
    libavformat/nutdec.c \
    libavformat/nut.c \
    libavformat/nuv.c \
    libavformat/oggdec.c \
    libavformat/oggparsedirac.c \
    libavformat/oggparseflac.c \
    libavformat/oggparseogm.c \
    libavformat/oggparseskeleton.c \
    libavformat/oggparsespeex.c \
    libavformat/oggparsetheora.c \
    libavformat/oma.c \
    libavformat/pcmdec.c \
    libavformat/pva.c \
    libavformat/qcp.c \
    libavformat/r3d.c \
    libavformat/rawvideodec.c \
    libavformat/rl2.c \
    libavformat/idroqdec.c \
    libavformat/rsodec.c \
    libavformat/rso.c \
    libavformat/rpl.c \
    libavformat/rdt.c \
    libavformat/rtp.c \
    libavformat/rtpdec.c \
    libavformat/rtpdec_amr.c \
    libavformat/rtpdec_asf.c \
    libavformat/rtpdec_h263.c \
    libavformat/rtpdec_h264.c \
    libavformat/rtpdec_latm.c \
    libavformat/rtpdec_mpeg4.c \
    libavformat/rtpdec_qcelp.c \
    libavformat/rtpdec_qdm2.c \
    libavformat/rtpdec_qt.c \
    libavformat/rtpdec_svq3.c \
    libavformat/rtpdec_vp8.c \
    libavformat/rtpdec_xiph.c \
    libavformat/rtsp.c \
    libavformat/rtspdec.c \
    libavformat/httpauth.c \
    libavformat/sapdec.c \
    libavformat/segafilm.c \
    libavformat/siff.c \
    libavformat/smacker.c \
    libavformat/sol.c \
    libavformat/soxdec.c \
    libavformat/spdif.c \
    libavformat/spdifdec.c \
    libavformat/srtdec.c \
    libavformat/psxstr.c \
    libavformat/swfdec.c \
    libavformat/thp.c \
    libavformat/tiertexseq.c \
    libavformat/tmv.c \
    libavformat/tta.c \
    libavformat/tty.c \
    libavformat/sauce.c \
    libavformat/txd.c \
    libavformat/vc1test.c \
    libavformat/sierravmd.c \
    libavformat/vqf.c \
    libavformat/wav.c \
    libavformat/wc3movie.c \
    libavformat/westwood.c \
    libavformat/wtv.c \
    libavformat/wv.c \
    libavformat/xa.c \
    libavformat/yop.c \
    libavformat/yuv4mpeg.c \
    libavformat/concat.c \
    libavformat/file.c \
    libavformat/gopher.c \
    libavformat/http.c \
    libavformat/mmsh.c \
    libavformat/mms.c \
    libavformat/mmst.c \
    libavformat/md5proto.c \
    libavformat/rtmpproto.c \
    libavformat/rtmppkt.c \
    libavformat/rtpproto.c \
    libavformat/tcp.c \
    libavformat/udp.c \
    libavutil/adler32.c \
    libavutil/aes.c \
    libavutil/avstring.c \
    libavutil/base64.c \
    libavutil/cpu.c \
    libavutil/crc.c \
    libavutil/des.c \
    libavutil/error.c \
    libavutil/eval.c \
    libavutil/fifo.c \
    libavutil/file.c \
    libavutil/intfloat_readwrite.c \
    libavutil/inverse.c \
    libavutil/lfg.c \
    libavutil/lls.c \
    libavutil/log.c \
    libavutil/lzo.c \
    libavutil/mathematics.c \
    libavutil/md5.c \
    libavutil/mem.c \
    libavutil/opt.c \
    libavutil/pixdesc.c \
    libavutil/random_seed.c \
    libavutil/rational.c \
    libavutil/rc4.c \
    libavutil/sha.c \
    libavutil/tree.c \
    libavutil/utils.c \
    libavutil/arm/cpu.c \
    libswscale/options.c \
    libswscale/rgb2rgb.c \
    libswscale/swscale.c \
    libswscale/utils.c \
    libswscale/yuv2rgb.c

FF_ARM_V6_SRC := \
    libavcodec/arm/dsputil_init_armv6.c \
    libavcodec/arm/dsputil_armv6.S \
    libavcodec/arm/simple_idct_armv6.S

FF_ARM_NEON_SRC := \
    libavcodec/arm/dsputil_init_neon.c \
    libavcodec/arm/dsputil_neon.S \
    libavcodec/arm/fmtconvert_neon.S \
    libavcodec/arm/int_neon.S \
    libavcodec/arm/mpegvideo_neon.S \
    libavcodec/arm/simple_idct_neon.S \
    libavcodec/arm/fft_neon.S \
    libavcodec/arm/mdct_neon.S \
    libavcodec/arm/rdft_neon.S \
    libavcodec/arm/h264dsp_neon.S \
    libavcodec/arm/h264idct_neon.S \
    libavcodec/arm/h264pred_neon.S \
    libavcodec/arm/dcadsp_neon.S \
    libavcodec/arm/synth_filter_neon.S \
    libavcodec/arm/vp3dsp_neon.S \
    libavcodec/arm/vp56dsp_neon.S

FF_CFLAGS := -DHAVE_AV_CONFIG_H -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := ffmpeg-6

LOCAL_C_INCLUDES += $(FF_INCLUDE)

LOCAL_CFLAGS += $(FF_CFLAGS)

LOCAL_CFLAGS += -DHAVE_NEON=0 -march=armv6j -mtune=arm1136j-s -msoft-float

LOCAL_SRC_FILES := \
    $(FF_COMMON_SRC) \
    $(FF_ARM_V6_SRC)

LOCAL_LDLIBS := -lc -lm -lz -llog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := ffmpeg-7

LOCAL_C_INCLUDES += $(FF_INCLUDE)

LOCAL_CFLAGS += $(FF_CFLAGS)

LOCAL_CFLAGS += -DHAVE_NEON=1 -march=armv7-a -mtune=cortex-a8 -mfloat-abi=softfp -mfpu=neon

LOCAL_LDFLAGS += -Wl,--fix-cortex-a8

LOCAL_SRC_FILES := \
    $(FF_COMMON_SRC) \
    $(FF_ARM_V6_SRC) \
    $(FF_ARM_NEON_SRC)

LOCAL_LDLIBS := -lc -lm -lz -llog

include $(BUILD_SHARED_LIBRARY)

