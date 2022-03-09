
project(libopenmpt CXX)
# base/*
# format/*
# audio/span.hpp
# io_read/* 
# io/* but not io/test/*
# mutex/mutex.hpp
# parse/*
# string/*
# string_transcode/*
# soundlib * but not soundlib/plugins/
set(OPENMPT_DIR ${PROJECT_SOURCE_DIR})
set(OPENMPT_SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
#
 set(LIBOPENMPT_DIR ${OPENMPT_DIR}/libopenmpt)
 set(LIBOPENMPT_SOURCE_DIR ${OPENMPT_DIR}/libopenmpt)
 set(LIBOPENMPT_INCLUDE_DIR ${OPENMPT_DIR}/libopenmpt)
#
 set(OPENMPT_COMMON_SOURCE_DIR ${OPENMPT_DIR}/common)
 set(OPENMPT_COMMON_INCLUDE_DIR ${OPENMPT_DIR}/common)
 set(OPENMPT_SOUNDLIB_SOURCE_DIR ${OPENMPT_DIR}/soundlib)
 set(OPENMPT_SOUNDLIB_INCLUDE_DIR ${OPENMPT_DIR}/soundlib)
 set(OPENMPT_MPT_SOURCE_DIR ${OPENMPT_SOURCE_DIR}/mpt)
 set(OPENMPT_MPT_INCLUDE_DIR ${OPENMPT_SOURCE_DIR}/mpt)
#

###
 set(LIBOPENMPT_SOURCE_FILES 
   ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_c.cpp
   ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_cxx.cpp
   ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_ext_impl.cpp
   ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_impl.cpp
   ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_test.cpp
   # FIXME: NO PLUGIN
   # ${LIBOPENMPT_SOURCE_DIR}/in_openmpt.cpp
   # ${LIBOPENMPT_SOURCE_DIR}/libopenmpt_plugin_gui.cpp
   # ${LIBOPENMPT_SOURCE_DIR}/xmp-openmpt.cpp
 )
 set(LIBOPENMPT_INCLUDE_FILES
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_config.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_ext_impl.hpp
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_ext.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_ext.hpp
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_impl.hpp
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_internal.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_buffer.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_fd.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_file_mingw.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_file_msvcrt.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_file_posix_lfs64.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_file_posix.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_stream_callbacks_file.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_version.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt.h
   ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt.hpp
   ${LIBOPENMPT_INCLUDE_DIR}/resource.h
   # FIXME: NO PLUGIN
   # ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_plugin_gui.hpp
   # ${LIBOPENMPT_INCLUDE_DIR}/libopenmpt_plugin_settings.hpp
 ) 
###
 set(OPENMPT_COMMON_INCLUDE_FILES 
    ${OPENMPT_COMMON_INCLUDE_DIR}/BuildSettings.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/ComponentManager.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/Dither.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/FileReader.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/FileReaderFwd.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/Logging.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/misc_util.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptAssert.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptBaseMacros.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptBaseTypes.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptBaseUtils.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptFileIO.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptPathString.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptRandom.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptString.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptStringBuffer.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptStringFormat.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptStringParse.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/mptTime.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/Profiler.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/serialization_utils.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/stdafx.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/version.h
    ${OPENMPT_COMMON_INCLUDE_DIR}/versionNumber.h
 )

 set(OPENMPT_COMMON_SOURCE_FILES 
    ${OPENMPT_COMMON_SOURCE_DIR}/ComponentManager.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/Logging.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptFileIO.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptPathString.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptRandom.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptString.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptStringBuffer.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptStringFormat.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptStringParse.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/mptTime.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/Profiler.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/serialization_utils.cpp
    ${OPENMPT_COMMON_SOURCE_DIR}/version.cpp
 )

 set(OPENMPT_SOUNDLIB_SOURCE_FILES
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/AudioCriticalSection.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ContainerMMCMP.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ContainerPP20.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ContainerUMX.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ContainerXPK.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Dlsbank.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Fastmix.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/InstrumentExtensions.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ITCompression.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ITTools.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_669.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_amf.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_ams.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_c67.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_dbm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_digi.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_dmf.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_dsm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_dtm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_far.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_fmt.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_gdm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_gt2.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_imf.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_it.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_itp.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/load_j2b.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mdl.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_med.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mid.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mo3.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mod.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mt2.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mtm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_mus_km.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_okt.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_plm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_psm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_ptm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_s3m.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_sfx.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_stm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_stp.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_symmod.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_uax.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_ult.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_wav.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Load_xm.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Message.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MIDIEvents.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MIDIMacros.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MixerLoops.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MixerSettings.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MixFuncTable.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/mod_specifications.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ModChannel.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/modcommand.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ModInstrument.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ModSample.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/ModSequence.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/modsmp_ctrl.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/MPEGFrame.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/OggStream.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/OPL.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/pattern.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/patternContainer.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Paula.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/RowVisitor.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/S3MTools.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatBRR.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatFLAC.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatMediaFoundation.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatMP3.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatOpus.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormats.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatSFZ.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleFormatVorbis.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SampleIO.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Snd_fx.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Sndfile.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Sndmix.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/SoundFilePlayConfig.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Tables.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/Tagging.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/TinyFFT.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/tuning.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/tuningCollection.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/UMXTools.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/UpgradeModule.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/WAVTools.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/WindowedFIR.cpp
    ${OPENMPT_SOUNDLIB_SOURCE_DIR}/XMTools.cpp
 )
 set(OPENMPT_SOUNDLIB_INCLUDE_FILES 
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/AudioCriticalSection.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/AudioReadTarget.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/BitReader.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Container.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Dlsbank.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/FloatMixer.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/IntMixer.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ITCompression.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ITTools.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Loaders.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Message.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MIDIEvents.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MIDIMacros.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Mixer.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MixerInterface.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MixerLoops.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MixerSettings.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MixFuncTable.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/mod_specifications.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ModChannel.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/modcommand.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ModInstrument.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ModSample.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ModSampleCopy.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/ModSequence.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/modsmp_ctrl.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/MPEGFrame.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/OggStream.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/opal.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/OPL.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/pattern.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/patternContainer.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Paula.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Resampler.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/RowVisitor.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/S3MTools.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/SampleCopy.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/SampleIO.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/SampleNormalize.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Snd_defs.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Sndfile.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/SoundFilePlayConfig.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Tables.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/Tagging.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/TinyFFT.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/tuning.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/tuningbase.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/tuningcollection.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/UMXTools.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/WAVTools.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/WindowedFIR.h
    ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/XMTools.h
 )
 set(OPENMPT_MPT_INCLUDE_FILES 
    ${OPENMPT_MPT_INCLUDE_DIR}/audio/sample.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/audio/span.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/base/algorithm.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/aligned_array.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/alloc.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/arithmetic_shift.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/array.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/bit.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/check_platform.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/compiletime_warning.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/constexpr_throw.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect_compiler.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect_libc.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect_libcxx.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect_os.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect_quirks.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/detect.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/floatingpoint.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/integer.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/macros.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/math.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/memory.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/namespace.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/numbers.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/numeric.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/pointer.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/preprocessor.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/saturate_cast.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/saturate_round.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/secure.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/semantic_version.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/source_location.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/span.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/utility.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/version.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/base/wrapping_divide.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/format/default_floatingpoint.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/default_formatter.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/default_integer.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/default_string.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/helpers.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/join.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/message_macros.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/message.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/simple_floatingpoint.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/simple_integer.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/simple_spec.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/format/simple.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/io/base.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io/io_span.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io/io_stdstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io/io_virtual_wrapper.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io/io.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/callbackstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_callbackstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_filename_traits.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_memory.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_stdstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_traits_filedata.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor_traits_memory.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filecursor.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_base_buffered.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_base_seekable.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_base_unseekable.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_base.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_callbackstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_memory.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata_stdstream.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filedata.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/io_read/filereader.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/mutex/mutex.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/parse/parse.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/parse/split.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/string/buffer.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/string/types.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/string/utility.hpp
    #
    ${OPENMPT_MPT_INCLUDE_DIR}/string_transcode/macros.hpp
    ${OPENMPT_MPT_INCLUDE_DIR}/string_transcode/transcode.hpp
    #
 )

set(LIBOPENMPT_FILES
    ${LIBOPENMPT_SOURCE_FILES}
    ${LIBOPENMPT_INCLUDE_FILES}
    #
    ${OPENMPT_COMMON_SOURCE_FILES}
    ${OPENMPT_COMMON_INCLUDE_FILES}
    ${OPENMPT_SOUNDLIB_SOURCE_FILES}
    ${OPENMPT_SOUNDLIB_INCLUDE_FILES}
    ${OPENMPT_MPT_INCLUDE_FILES}
)
 
add_library(${PROJECT_NAME} STATIC ${LIBOPENMPT_FILES})

target_include_directories(${PROJECT_NAME} PUBLIC
   ${OPENMPT_DIR}
    #
)
target_include_directories(${PROJECT_NAME} PRIVATE
   ${OPENMPT_SOURCE_DIR}
   ${OPENMPT_COMMON_INCLUDE_DIR}

)

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)

target_compile_definitions(${PROJECT_NAME} PRIVATE 
   LIBOPENMPT_BUILD
   NO_WINAMP
   )

# ifeq ($(HACK_ARCHIVE_SUPPORT),1)
# SOUNDLIB_CXX_SOURCES += $(sort $(wildcard unarchiver/*.cpp))
# endif

#include "common/stdafx.h"
#include "common/version.h"
#include "common/misc_util.h"
#include "common/Dither.h"
#include "common/FileReader.h"
#include "common/Logging.h"
#include "openmpt/all/BuildSettings.hpp"
#include "mpt/base/algorithm.hpp"
#include "mpt/base/saturate_cast.hpp"
#include "mpt/base/saturate_round.hpp"
#include "mpt/base/saturate_round.hpp"
#include "mpt/audio/span.hpp"
#include "mpt/format/default_integer.hpp"
#include "mpt/format/default_floatingpoint.hpp"
#include "mpt/format/default_string.hpp"
#include "mpt/io_read/callbackstream.hpp"
#include "mpt/io_read/filecursor_callbackstream.hpp"
#include "mpt/io_read/filecursor_memory.hpp"
#include "mpt/io_read/filecursor_stdstream.hpp"
#include "mpt/mutex/mutex.hpp"
#include "mpt/parse/parse.hpp"
#include "mpt/string/types.hpp"
#include "mpt/string/utility.hpp"
#include "mpt/string_transcode/transcode.hpp"
#include "soundlib/Sndfile.h"
#include "soundlib/mod_specifications.h"
#include "soundlib/AudioReadTarget.h"

#include "soundlib/Sndfile.h"


# file(GLOB OPENMPT_COMMON_SOURCE_FILES ${OPENMPT_COMMON_SOURCE_DIR}/*.c?(pp))
# file(GLOB OPENMPT_COMMON_INCLUDE_FILES ${OPENMPT_COMMON_INCLUDE_DIR}/*.h?(pp))
# file(GLOB OPENMPT_SOUNDLIB_SOURCE_FILES ${OPENMPT_SOUNDLIB_SOURCE_DIR}/*.c?(pp))
# file(GLOB OPENMPT_SOUNDLIB_INCLUDE_FILES ${OPENMPT_SOUNDLIB_INCLUDE_DIR}/*.h?(pp))
# file(GLOB OPENMPT_BASE_SOURCE_FILES ${OPENMPT_DIR}/base/*.c?(pp))
# file(GLOB OPENMPT_BASE_INCLUDE_FILES ${OPENMPT_DIR}/base/*.h?(pp))
# file(GLOB OPENMPT_FORMAT_SOURCE_FILES ${OPENMPT_DIR}/format/*.c?(pp))
# file(GLOB OPENMPT_FORMAT_INCLUDE_FILES ${OPENMPT_DIR}/format/*.h?(pp))
# file(GLOB OPENMPT_IO_SOURCE_FILES ${OPENMPT_DIR}/io/*.c?(pp))
# file(GLOB OPENMPT_IO_INCLUDE_FILES ${OPENMPT_DIR}/io/*.h?(pp))
# file(GLOB OPENMPT_IO_READ_SOURCE_FILES ${OPENMPT_DIR}/io_read/*.c?(pp))
# file(GLOB OPENMPT_IO_READ_INCLUDE_FILES ${OPENMPT_DIR}/io_read/*.h?(pp))
# file(GLOB OPENMPT_ENDIAN_SOURCE_FILES ${OPENMPT_DIR}/endian/*.c?(pp))
# file(GLOB OPENMPT_ENDIAN_INCLUDE_FILES ${OPENMPT_DIR}/endian/*.h?(pp))
# file(GLOB OPENMPT_PARSE_SOURCE_FILES ${OPENMPT_DIR}/parse/*.c?(pp))
# file(GLOB OPENMPT_PARSE_INCLUDE_FILES ${OPENMPT_DIR}/parse/*.h?(pp))
# file(GLOB OPENMPT_STRING_SOURCE_FILES ${OPENMPT_DIR}/string/*.c?(pp))
# file(GLOB OPENMPT_STRING_INCLUDE_FILES ${OPENMPT_DIR}/string/*.h?(pp))
# file(GLOB OPENMPT_STRING_TRANSCODE_SOURCE_FILES ${OPENMPT_DIR}/string_transcode/*.c?(pp))
# file(GLOB OPENMPT_STRING_TRANSCODE_INCLUDE_FILES ${OPENMPT_DIR}/string_transcode/*.h?(pp))
# file(GLOB OPENMPT_MUTEX_SOURCE_FILES ${OPENMPT_DIR}/mutex/*.c?(pp))
# file(GLOB OPENMPT_MUTEX_INCLUDE_FILES ${OPENMPT_DIR}/mutex/*.h?(pp))
# file(GLOB OPENMPT_AUDIO_SOURCE_FILES ${OPENMPT_DIR}/audio/*.c?(pp))
# file(GLOB OPENMPT_AUDIO_INCLUDE_FILES ${OPENMPT_DIR}/audio/*.h?(pp))