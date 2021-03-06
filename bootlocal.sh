#!/bin/sh
export HTTP_PROXY=http://grc-india-pitc-wkcz.proxy.corporate.gtm.ge.com:80
export HTTPS_PROXY=http://grc-india-pitc-wkcz.proxy.corporate.gtm.ge.com:80
BOOT2DOCKER_CERTS_DIR=/var/lib/boot2docker/certs
CERTS_DIR=/etc/ssl/certs
CAFILE=${CERTS_DIR}/ca-certificates.crt

for cert in $(/bin/ls -1 ${BOOT2DOCKER_CERTS_DIR}); do
    SRC_CERT_FILE=${BOOT2DOCKER_CERTS_DIR}/${cert}
    CERT_FILE=${CERTS_DIR}/${cert}
    HASH_FILE=${CERTS_DIR}/$(/usr/local/bin/openssl x509 -noout -hash -in ${SRC_CERT_FILE} 2>/dev/null)

    [ ! -L ${CERT_FILE} ] && /bin/ln -fs ${SRC_CERT_FILE} ${CERT_FILE}

    for idx in $(/usr/bin/seq 0 9); do
        if [ -L ${HASH_FILE}.${idx} ]; then
            [ "$(/usr/bin/readlink ${HASH_FILE}.${idx})" = "${SRC_CERT_FILE}" ] && break
        else
            /bin/ln -fs ${SRC_CERT_FILE} ${HASH_FILE}.${idx}
            break
        fi
    done
    /bin/cat ${SRC_CERT_FILE} >> ${CAFILE}
done
