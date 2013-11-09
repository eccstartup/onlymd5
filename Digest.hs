module Digest
       (
         md5simple,
         findMD5,
         md5pure --,
         --md5c
       ) where

import Data.Hash.MD5 (md5s, Str(..))

import Data.Digest.OpenSSL.MD5 (md5sum)
import Data.ByteString.Char8 (pack)

import Data.ByteString.Lazy.Internal (packChars)
import Data.Digest.Pure.MD5 as P

-- import qualified Crypto.Hash.MD5 as C
-- import GHC.Word (Word8)
-- import qualified Data.ByteString as B
-- import Codec.Binary.UTF8.String (encode,decode)

-- use Data.Hash.md5
md5simple x = md5s (Str x)

-- use Data.Digest.OpenSSL.MD5
findMD5 s = md5sum $ pack $ s

-- use Data.Digest.Pure.MD5
md5pure s = P.md5 $ packChars s

-- use Crypto.Hash.MD5
-- md5c = decode. (B.unpack). (C.hash). (B.pack). encode
