#!/usr/bin/env PYTHONIOENCODING=UTF-8 /usr/local/bin/python
# coding: latin-1
# <bitbar.title>Coinbase balance</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>ronangaillard</bitbar.author>
# <bitbar.author.github>ronangaillard</bitbar.author.github>
# <bitbar.desc>Display your current coinbase balance</bitbar.desc>
# 

from coinbase.wallet.client import Client

from keys import CNBASE_PRIVATE_KEY, CNBASE_PUBLIC_KEY

client = Client(
    CNBASE_PUBLIC_KEY,
    CNBASE_PRIVATE_KEY,
    api_version='2017-06-28')

accounts = client.get_accounts()

full_balance = sum([float(account.native_balance.amount) for account in accounts.data])

print str(full_balance) + b"\xe2\x82\xac\t".decode('utf8')

