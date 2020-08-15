#!/bin/sh

cat <<EOF
module
{
        name = "m_stellar_api"
        authorization = "Bearer ${ANOPE_API_SECRET_KEY}"
}
EOF
