# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MyGists::Application.config.secret_key_base = 'c79e3a51c15ca886d5df6cec2a8817dd016b755ff242111c2ecc6cb42f4b240bd2a47b84a86fa6ace138b41eb6b3db00b5a5ba2e2f5cfe4c3cbfa3feb6ce7b94'
=======
# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
MyGists::Application.config.secret_token = '1c4c5b04dc6974fa63bfad8b708bc71cd1c369763f937c06fa66f5ffe0786ef033b2a02c4c1485a7bd63cc7e47e83221c037b85aed6fc2977268f06a82e11742'
>>>>>>> 32b276a2c3c780850d0391bdb8dc1909570631cf
