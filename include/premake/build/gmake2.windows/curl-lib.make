# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_win32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../contrib/curl/lib -I../../contrib/mbedtls/include -I../../contrib/zlib -isystem ../../contrib/curl/include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS += -lcrypt32
LDDEPS +=
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release_win32)
TARGETDIR = bin/Win32/Release
TARGET = $(TARGETDIR)/curl-lib.lib
OBJDIR = obj/Win32/Release/curl-lib
DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -DNDEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -flto -O3 -w
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -flto -O3 -w -fno-stack-protector
ALL_LDFLAGS += $(LDFLAGS) -flto -s

else ifeq ($(config),debug_win32)
TARGETDIR = bin/Win32/Debug
TARGET = $(TARGETDIR)/curl-lib.lib
OBJDIR = obj/Win32/Debug/curl-lib
DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -D_DEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g -w
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -w
ALL_LDFLAGS += $(LDFLAGS)

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/amigaos.o
GENERATED += $(OBJDIR)/asyn-ares.o
GENERATED += $(OBJDIR)/asyn-thread.o
GENERATED += $(OBJDIR)/axtls.o
GENERATED += $(OBJDIR)/base64.o
GENERATED += $(OBJDIR)/cleartext.o
GENERATED += $(OBJDIR)/conncache.o
GENERATED += $(OBJDIR)/connect.o
GENERATED += $(OBJDIR)/content_encoding.o
GENERATED += $(OBJDIR)/cookie.o
GENERATED += $(OBJDIR)/cram.o
GENERATED += $(OBJDIR)/curl_addrinfo.o
GENERATED += $(OBJDIR)/curl_des.o
GENERATED += $(OBJDIR)/curl_endian.o
GENERATED += $(OBJDIR)/curl_fnmatch.o
GENERATED += $(OBJDIR)/curl_gethostname.o
GENERATED += $(OBJDIR)/curl_gssapi.o
GENERATED += $(OBJDIR)/curl_memrchr.o
GENERATED += $(OBJDIR)/curl_multibyte.o
GENERATED += $(OBJDIR)/curl_ntlm_core.o
GENERATED += $(OBJDIR)/curl_ntlm_wb.o
GENERATED += $(OBJDIR)/curl_rtmp.o
GENERATED += $(OBJDIR)/curl_sasl.o
GENERATED += $(OBJDIR)/curl_sspi.o
GENERATED += $(OBJDIR)/curl_threads.o
GENERATED += $(OBJDIR)/cyassl.o
GENERATED += $(OBJDIR)/darwinssl.o
GENERATED += $(OBJDIR)/dict.o
GENERATED += $(OBJDIR)/digest.o
GENERATED += $(OBJDIR)/digest_sspi.o
GENERATED += $(OBJDIR)/dotdot.o
GENERATED += $(OBJDIR)/easy.o
GENERATED += $(OBJDIR)/escape.o
GENERATED += $(OBJDIR)/file.o
GENERATED += $(OBJDIR)/fileinfo.o
GENERATED += $(OBJDIR)/formdata.o
GENERATED += $(OBJDIR)/ftp.o
GENERATED += $(OBJDIR)/ftplistparser.o
GENERATED += $(OBJDIR)/getenv.o
GENERATED += $(OBJDIR)/getinfo.o
GENERATED += $(OBJDIR)/gopher.o
GENERATED += $(OBJDIR)/gskit.o
GENERATED += $(OBJDIR)/gtls.o
GENERATED += $(OBJDIR)/hash.o
GENERATED += $(OBJDIR)/hmac.o
GENERATED += $(OBJDIR)/hostasyn.o
GENERATED += $(OBJDIR)/hostcheck.o
GENERATED += $(OBJDIR)/hostip.o
GENERATED += $(OBJDIR)/hostip4.o
GENERATED += $(OBJDIR)/hostip6.o
GENERATED += $(OBJDIR)/hostsyn.o
GENERATED += $(OBJDIR)/http.o
GENERATED += $(OBJDIR)/http2.o
GENERATED += $(OBJDIR)/http_chunks.o
GENERATED += $(OBJDIR)/http_digest.o
GENERATED += $(OBJDIR)/http_negotiate.o
GENERATED += $(OBJDIR)/http_ntlm.o
GENERATED += $(OBJDIR)/http_proxy.o
GENERATED += $(OBJDIR)/idn_win32.o
GENERATED += $(OBJDIR)/if2ip.o
GENERATED += $(OBJDIR)/imap.o
GENERATED += $(OBJDIR)/inet_ntop.o
GENERATED += $(OBJDIR)/inet_pton.o
GENERATED += $(OBJDIR)/krb5.o
GENERATED += $(OBJDIR)/krb5_gssapi.o
GENERATED += $(OBJDIR)/krb5_sspi.o
GENERATED += $(OBJDIR)/ldap.o
GENERATED += $(OBJDIR)/llist.o
GENERATED += $(OBJDIR)/mbedtls.o
GENERATED += $(OBJDIR)/md4.o
GENERATED += $(OBJDIR)/md5.o
GENERATED += $(OBJDIR)/memdebug.o
GENERATED += $(OBJDIR)/mprintf.o
GENERATED += $(OBJDIR)/multi.o
GENERATED += $(OBJDIR)/netrc.o
GENERATED += $(OBJDIR)/non-ascii.o
GENERATED += $(OBJDIR)/nonblock.o
GENERATED += $(OBJDIR)/nss.o
GENERATED += $(OBJDIR)/ntlm.o
GENERATED += $(OBJDIR)/ntlm_sspi.o
GENERATED += $(OBJDIR)/nwlib.o
GENERATED += $(OBJDIR)/nwos.o
GENERATED += $(OBJDIR)/oauth2.o
GENERATED += $(OBJDIR)/openldap.o
GENERATED += $(OBJDIR)/openssl.o
GENERATED += $(OBJDIR)/parsedate.o
GENERATED += $(OBJDIR)/pingpong.o
GENERATED += $(OBJDIR)/pipeline.o
GENERATED += $(OBJDIR)/polarssl.o
GENERATED += $(OBJDIR)/polarssl_threadlock.o
GENERATED += $(OBJDIR)/pop3.o
GENERATED += $(OBJDIR)/progress.o
GENERATED += $(OBJDIR)/rand.o
GENERATED += $(OBJDIR)/rtsp.o
GENERATED += $(OBJDIR)/schannel.o
GENERATED += $(OBJDIR)/security.o
GENERATED += $(OBJDIR)/select.o
GENERATED += $(OBJDIR)/sendf.o
GENERATED += $(OBJDIR)/share.o
GENERATED += $(OBJDIR)/slist.o
GENERATED += $(OBJDIR)/smb.o
GENERATED += $(OBJDIR)/smtp.o
GENERATED += $(OBJDIR)/socks.o
GENERATED += $(OBJDIR)/socks_gssapi.o
GENERATED += $(OBJDIR)/socks_sspi.o
GENERATED += $(OBJDIR)/speedcheck.o
GENERATED += $(OBJDIR)/splay.o
GENERATED += $(OBJDIR)/spnego_gssapi.o
GENERATED += $(OBJDIR)/spnego_sspi.o
GENERATED += $(OBJDIR)/ssh.o
GENERATED += $(OBJDIR)/strcase.o
GENERATED += $(OBJDIR)/strdup.o
GENERATED += $(OBJDIR)/strerror.o
GENERATED += $(OBJDIR)/strtok.o
GENERATED += $(OBJDIR)/strtoofft.o
GENERATED += $(OBJDIR)/system_win32.o
GENERATED += $(OBJDIR)/telnet.o
GENERATED += $(OBJDIR)/tftp.o
GENERATED += $(OBJDIR)/timeval.o
GENERATED += $(OBJDIR)/transfer.o
GENERATED += $(OBJDIR)/url.o
GENERATED += $(OBJDIR)/vauth.o
GENERATED += $(OBJDIR)/version.o
GENERATED += $(OBJDIR)/vtls.o
GENERATED += $(OBJDIR)/warnless.o
GENERATED += $(OBJDIR)/wildcard.o
GENERATED += $(OBJDIR)/x509asn1.o
OBJECTS += $(OBJDIR)/amigaos.o
OBJECTS += $(OBJDIR)/asyn-ares.o
OBJECTS += $(OBJDIR)/asyn-thread.o
OBJECTS += $(OBJDIR)/axtls.o
OBJECTS += $(OBJDIR)/base64.o
OBJECTS += $(OBJDIR)/cleartext.o
OBJECTS += $(OBJDIR)/conncache.o
OBJECTS += $(OBJDIR)/connect.o
OBJECTS += $(OBJDIR)/content_encoding.o
OBJECTS += $(OBJDIR)/cookie.o
OBJECTS += $(OBJDIR)/cram.o
OBJECTS += $(OBJDIR)/curl_addrinfo.o
OBJECTS += $(OBJDIR)/curl_des.o
OBJECTS += $(OBJDIR)/curl_endian.o
OBJECTS += $(OBJDIR)/curl_fnmatch.o
OBJECTS += $(OBJDIR)/curl_gethostname.o
OBJECTS += $(OBJDIR)/curl_gssapi.o
OBJECTS += $(OBJDIR)/curl_memrchr.o
OBJECTS += $(OBJDIR)/curl_multibyte.o
OBJECTS += $(OBJDIR)/curl_ntlm_core.o
OBJECTS += $(OBJDIR)/curl_ntlm_wb.o
OBJECTS += $(OBJDIR)/curl_rtmp.o
OBJECTS += $(OBJDIR)/curl_sasl.o
OBJECTS += $(OBJDIR)/curl_sspi.o
OBJECTS += $(OBJDIR)/curl_threads.o
OBJECTS += $(OBJDIR)/cyassl.o
OBJECTS += $(OBJDIR)/darwinssl.o
OBJECTS += $(OBJDIR)/dict.o
OBJECTS += $(OBJDIR)/digest.o
OBJECTS += $(OBJDIR)/digest_sspi.o
OBJECTS += $(OBJDIR)/dotdot.o
OBJECTS += $(OBJDIR)/easy.o
OBJECTS += $(OBJDIR)/escape.o
OBJECTS += $(OBJDIR)/file.o
OBJECTS += $(OBJDIR)/fileinfo.o
OBJECTS += $(OBJDIR)/formdata.o
OBJECTS += $(OBJDIR)/ftp.o
OBJECTS += $(OBJDIR)/ftplistparser.o
OBJECTS += $(OBJDIR)/getenv.o
OBJECTS += $(OBJDIR)/getinfo.o
OBJECTS += $(OBJDIR)/gopher.o
OBJECTS += $(OBJDIR)/gskit.o
OBJECTS += $(OBJDIR)/gtls.o
OBJECTS += $(OBJDIR)/hash.o
OBJECTS += $(OBJDIR)/hmac.o
OBJECTS += $(OBJDIR)/hostasyn.o
OBJECTS += $(OBJDIR)/hostcheck.o
OBJECTS += $(OBJDIR)/hostip.o
OBJECTS += $(OBJDIR)/hostip4.o
OBJECTS += $(OBJDIR)/hostip6.o
OBJECTS += $(OBJDIR)/hostsyn.o
OBJECTS += $(OBJDIR)/http.o
OBJECTS += $(OBJDIR)/http2.o
OBJECTS += $(OBJDIR)/http_chunks.o
OBJECTS += $(OBJDIR)/http_digest.o
OBJECTS += $(OBJDIR)/http_negotiate.o
OBJECTS += $(OBJDIR)/http_ntlm.o
OBJECTS += $(OBJDIR)/http_proxy.o
OBJECTS += $(OBJDIR)/idn_win32.o
OBJECTS += $(OBJDIR)/if2ip.o
OBJECTS += $(OBJDIR)/imap.o
OBJECTS += $(OBJDIR)/inet_ntop.o
OBJECTS += $(OBJDIR)/inet_pton.o
OBJECTS += $(OBJDIR)/krb5.o
OBJECTS += $(OBJDIR)/krb5_gssapi.o
OBJECTS += $(OBJDIR)/krb5_sspi.o
OBJECTS += $(OBJDIR)/ldap.o
OBJECTS += $(OBJDIR)/llist.o
OBJECTS += $(OBJDIR)/mbedtls.o
OBJECTS += $(OBJDIR)/md4.o
OBJECTS += $(OBJDIR)/md5.o
OBJECTS += $(OBJDIR)/memdebug.o
OBJECTS += $(OBJDIR)/mprintf.o
OBJECTS += $(OBJDIR)/multi.o
OBJECTS += $(OBJDIR)/netrc.o
OBJECTS += $(OBJDIR)/non-ascii.o
OBJECTS += $(OBJDIR)/nonblock.o
OBJECTS += $(OBJDIR)/nss.o
OBJECTS += $(OBJDIR)/ntlm.o
OBJECTS += $(OBJDIR)/ntlm_sspi.o
OBJECTS += $(OBJDIR)/nwlib.o
OBJECTS += $(OBJDIR)/nwos.o
OBJECTS += $(OBJDIR)/oauth2.o
OBJECTS += $(OBJDIR)/openldap.o
OBJECTS += $(OBJDIR)/openssl.o
OBJECTS += $(OBJDIR)/parsedate.o
OBJECTS += $(OBJDIR)/pingpong.o
OBJECTS += $(OBJDIR)/pipeline.o
OBJECTS += $(OBJDIR)/polarssl.o
OBJECTS += $(OBJDIR)/polarssl_threadlock.o
OBJECTS += $(OBJDIR)/pop3.o
OBJECTS += $(OBJDIR)/progress.o
OBJECTS += $(OBJDIR)/rand.o
OBJECTS += $(OBJDIR)/rtsp.o
OBJECTS += $(OBJDIR)/schannel.o
OBJECTS += $(OBJDIR)/security.o
OBJECTS += $(OBJDIR)/select.o
OBJECTS += $(OBJDIR)/sendf.o
OBJECTS += $(OBJDIR)/share.o
OBJECTS += $(OBJDIR)/slist.o
OBJECTS += $(OBJDIR)/smb.o
OBJECTS += $(OBJDIR)/smtp.o
OBJECTS += $(OBJDIR)/socks.o
OBJECTS += $(OBJDIR)/socks_gssapi.o
OBJECTS += $(OBJDIR)/socks_sspi.o
OBJECTS += $(OBJDIR)/speedcheck.o
OBJECTS += $(OBJDIR)/splay.o
OBJECTS += $(OBJDIR)/spnego_gssapi.o
OBJECTS += $(OBJDIR)/spnego_sspi.o
OBJECTS += $(OBJDIR)/ssh.o
OBJECTS += $(OBJDIR)/strcase.o
OBJECTS += $(OBJDIR)/strdup.o
OBJECTS += $(OBJDIR)/strerror.o
OBJECTS += $(OBJDIR)/strtok.o
OBJECTS += $(OBJDIR)/strtoofft.o
OBJECTS += $(OBJDIR)/system_win32.o
OBJECTS += $(OBJDIR)/telnet.o
OBJECTS += $(OBJDIR)/tftp.o
OBJECTS += $(OBJDIR)/timeval.o
OBJECTS += $(OBJDIR)/transfer.o
OBJECTS += $(OBJDIR)/url.o
OBJECTS += $(OBJDIR)/vauth.o
OBJECTS += $(OBJDIR)/version.o
OBJECTS += $(OBJDIR)/vtls.o
OBJECTS += $(OBJDIR)/warnless.o
OBJECTS += $(OBJDIR)/wildcard.o
OBJECTS += $(OBJDIR)/x509asn1.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking curl-lib
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning curl-lib
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/amigaos.o: ../../contrib/curl/lib/amigaos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asyn-ares.o: ../../contrib/curl/lib/asyn-ares.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asyn-thread.o: ../../contrib/curl/lib/asyn-thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/base64.o: ../../contrib/curl/lib/base64.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/conncache.o: ../../contrib/curl/lib/conncache.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/connect.o: ../../contrib/curl/lib/connect.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/content_encoding.o: ../../contrib/curl/lib/content_encoding.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cookie.o: ../../contrib/curl/lib/cookie.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_addrinfo.o: ../../contrib/curl/lib/curl_addrinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_des.o: ../../contrib/curl/lib/curl_des.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_endian.o: ../../contrib/curl/lib/curl_endian.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_fnmatch.o: ../../contrib/curl/lib/curl_fnmatch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_gethostname.o: ../../contrib/curl/lib/curl_gethostname.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_gssapi.o: ../../contrib/curl/lib/curl_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_memrchr.o: ../../contrib/curl/lib/curl_memrchr.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_multibyte.o: ../../contrib/curl/lib/curl_multibyte.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_ntlm_core.o: ../../contrib/curl/lib/curl_ntlm_core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_ntlm_wb.o: ../../contrib/curl/lib/curl_ntlm_wb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_rtmp.o: ../../contrib/curl/lib/curl_rtmp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_sasl.o: ../../contrib/curl/lib/curl_sasl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_sspi.o: ../../contrib/curl/lib/curl_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_threads.o: ../../contrib/curl/lib/curl_threads.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dict.o: ../../contrib/curl/lib/dict.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dotdot.o: ../../contrib/curl/lib/dotdot.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/easy.o: ../../contrib/curl/lib/easy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/escape.o: ../../contrib/curl/lib/escape.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file.o: ../../contrib/curl/lib/file.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/fileinfo.o: ../../contrib/curl/lib/fileinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/formdata.o: ../../contrib/curl/lib/formdata.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ftp.o: ../../contrib/curl/lib/ftp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ftplistparser.o: ../../contrib/curl/lib/ftplistparser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getenv.o: ../../contrib/curl/lib/getenv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getinfo.o: ../../contrib/curl/lib/getinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gopher.o: ../../contrib/curl/lib/gopher.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hash.o: ../../contrib/curl/lib/hash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hmac.o: ../../contrib/curl/lib/hmac.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostasyn.o: ../../contrib/curl/lib/hostasyn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostcheck.o: ../../contrib/curl/lib/hostcheck.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip.o: ../../contrib/curl/lib/hostip.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip4.o: ../../contrib/curl/lib/hostip4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip6.o: ../../contrib/curl/lib/hostip6.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostsyn.o: ../../contrib/curl/lib/hostsyn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http.o: ../../contrib/curl/lib/http.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http2.o: ../../contrib/curl/lib/http2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_chunks.o: ../../contrib/curl/lib/http_chunks.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_digest.o: ../../contrib/curl/lib/http_digest.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_negotiate.o: ../../contrib/curl/lib/http_negotiate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_ntlm.o: ../../contrib/curl/lib/http_ntlm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_proxy.o: ../../contrib/curl/lib/http_proxy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/idn_win32.o: ../../contrib/curl/lib/idn_win32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/if2ip.o: ../../contrib/curl/lib/if2ip.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/imap.o: ../../contrib/curl/lib/imap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet_ntop.o: ../../contrib/curl/lib/inet_ntop.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet_pton.o: ../../contrib/curl/lib/inet_pton.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5.o: ../../contrib/curl/lib/krb5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ldap.o: ../../contrib/curl/lib/ldap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/llist.o: ../../contrib/curl/lib/llist.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md4.o: ../../contrib/curl/lib/md4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md5.o: ../../contrib/curl/lib/md5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/memdebug.o: ../../contrib/curl/lib/memdebug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mprintf.o: ../../contrib/curl/lib/mprintf.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/multi.o: ../../contrib/curl/lib/multi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/netrc.o: ../../contrib/curl/lib/netrc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/non-ascii.o: ../../contrib/curl/lib/non-ascii.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nonblock.o: ../../contrib/curl/lib/nonblock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nwlib.o: ../../contrib/curl/lib/nwlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nwos.o: ../../contrib/curl/lib/nwos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/openldap.o: ../../contrib/curl/lib/openldap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/parsedate.o: ../../contrib/curl/lib/parsedate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pingpong.o: ../../contrib/curl/lib/pingpong.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pipeline.o: ../../contrib/curl/lib/pipeline.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pop3.o: ../../contrib/curl/lib/pop3.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/progress.o: ../../contrib/curl/lib/progress.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rand.o: ../../contrib/curl/lib/rand.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rtsp.o: ../../contrib/curl/lib/rtsp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/security.o: ../../contrib/curl/lib/security.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/select.o: ../../contrib/curl/lib/select.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sendf.o: ../../contrib/curl/lib/sendf.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/share.o: ../../contrib/curl/lib/share.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/slist.o: ../../contrib/curl/lib/slist.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/smb.o: ../../contrib/curl/lib/smb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/smtp.o: ../../contrib/curl/lib/smtp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks.o: ../../contrib/curl/lib/socks.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks_gssapi.o: ../../contrib/curl/lib/socks_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks_sspi.o: ../../contrib/curl/lib/socks_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/speedcheck.o: ../../contrib/curl/lib/speedcheck.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/splay.o: ../../contrib/curl/lib/splay.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssh.o: ../../contrib/curl/lib/ssh.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strcase.o: ../../contrib/curl/lib/strcase.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strdup.o: ../../contrib/curl/lib/strdup.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strerror.o: ../../contrib/curl/lib/strerror.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strtok.o: ../../contrib/curl/lib/strtok.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strtoofft.o: ../../contrib/curl/lib/strtoofft.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/system_win32.o: ../../contrib/curl/lib/system_win32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/telnet.o: ../../contrib/curl/lib/telnet.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tftp.o: ../../contrib/curl/lib/tftp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timeval.o: ../../contrib/curl/lib/timeval.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/transfer.o: ../../contrib/curl/lib/transfer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/url.o: ../../contrib/curl/lib/url.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cleartext.o: ../../contrib/curl/lib/vauth/cleartext.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cram.o: ../../contrib/curl/lib/vauth/cram.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/digest.o: ../../contrib/curl/lib/vauth/digest.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/digest_sspi.o: ../../contrib/curl/lib/vauth/digest_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5_gssapi.o: ../../contrib/curl/lib/vauth/krb5_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5_sspi.o: ../../contrib/curl/lib/vauth/krb5_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ntlm.o: ../../contrib/curl/lib/vauth/ntlm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ntlm_sspi.o: ../../contrib/curl/lib/vauth/ntlm_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/oauth2.o: ../../contrib/curl/lib/vauth/oauth2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/spnego_gssapi.o: ../../contrib/curl/lib/vauth/spnego_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/spnego_sspi.o: ../../contrib/curl/lib/vauth/spnego_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vauth.o: ../../contrib/curl/lib/vauth/vauth.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version.o: ../../contrib/curl/lib/version.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/axtls.o: ../../contrib/curl/lib/vtls/axtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cyassl.o: ../../contrib/curl/lib/vtls/cyassl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/darwinssl.o: ../../contrib/curl/lib/vtls/darwinssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gskit.o: ../../contrib/curl/lib/vtls/gskit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gtls.o: ../../contrib/curl/lib/vtls/gtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mbedtls.o: ../../contrib/curl/lib/vtls/mbedtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nss.o: ../../contrib/curl/lib/vtls/nss.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/openssl.o: ../../contrib/curl/lib/vtls/openssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/polarssl.o: ../../contrib/curl/lib/vtls/polarssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/polarssl_threadlock.o: ../../contrib/curl/lib/vtls/polarssl_threadlock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/schannel.o: ../../contrib/curl/lib/vtls/schannel.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vtls.o: ../../contrib/curl/lib/vtls/vtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/warnless.o: ../../contrib/curl/lib/warnless.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wildcard.o: ../../contrib/curl/lib/wildcard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509asn1.o: ../../contrib/curl/lib/x509asn1.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif