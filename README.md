coinrate
========

Quickly show the value of the Bitcoins in your Coinbase wallet.


####Setup

Coinrate relies on your Coinbase API key. If you haven't already, enable your API key [here](https://coinbase.com/docs/api/authentication).   

Coinrate will look for your API key in the environment variable `COINBASE_API_KEY`.

You can set this API key temporarily (for this shell session) by running:
```
$ EXPORT COINBASE_API_KEY="your Coinbase API key"
```

You will need Ruby, with a few extra modules installed:
```
$ (sudo) gem install httpclient
$ (sudo) gem install json
$ (sudo) gem install optparse
```


####Usage

To use Coinrate:

```
$ ./coinrate [-v]
```

`-v`: Also shows the current Coinbase buy and sell rate of one Bitcoin

####License

MIT 
