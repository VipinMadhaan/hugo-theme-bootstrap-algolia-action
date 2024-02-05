FROM VipinMadhaan/ivipin-algolia as algolia

FROM VipinMadhaan/hugo
COPY --from=algolia /usr/local/bin/ivipin-algolia /usr/local/bin/ivipin-algolia
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
