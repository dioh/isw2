require '../lib/serviceimplementation/twitter_offline_streaming'

if __FILE__ == $PROGRAM_NAME
  x = TwitterOfflineStreaming.new('./precio_justo.db', 'pzHy4a2RS117qM55w0yXGA', 'wXPbVA5qQNWHSQbswqjwyZRaF1axgr6ixxbr0KZvg', '1329426655-nrcy7Ftfk5fvZ3Yiu87jA6d1YjhyMIw3CKooSg3', 'Di0Hmyh5PaVMbMrK5IhLRbdwwWqwK5BoKR861OIC0')
  x.start()
end