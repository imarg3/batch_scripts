#!/usr/bin/python
"""
Author : Arpit Gupta
Created-Date : 30-March-2019
Modified-Date : 30-March-2019
Description : This module is used to convert text to Base64 / Quoted-printable encoded words.
"""

import base64, quopri

def text_to_encoded_words(text, charset, encoding):
  """
    text: text to be transmitted
    charset: the character set for text
    encoding: either 'q' for quoted-printable or 'b' for base64
  """ 

  byte_string = text.encode(charset)
  if encoding.lower() is 'b':
      encoded_text = base64.b64encode(byte_string)
  elif encoding.lower() is 'q':
      encoded_text = quopri.encodestring(byte_string)

  return "=?{charset}?{encoding}?{encoded_text}?=".format(
      charset=charset.upper(),
      encoding=encoding.upper(),
      encoded_text=encoded_text.decode('ascii'))
