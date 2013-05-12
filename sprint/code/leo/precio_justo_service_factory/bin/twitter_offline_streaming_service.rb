require_relative '../lib/serviceimplementation/twitter_offline_streaming'

if __FILE__ == $PROGRAM_NAME
  x = TwitterOfflineStreaming.new('./precio_justo.db', 'MjHsfw9NMnDLFgYcO9yOg', 'vdwhXkLqWGgWVAXFJop6WwzFrTckwPMSMKHvbdCKhWQ', '1423952552-as4KNuDXcaxr2dw03IkNaLKQjHBfZDGCVRwdDGP', 'l6pALciqEZwHrPPrhkm0xs9prGkB7qngI3jvViJ1w1s')
  x.start()
end