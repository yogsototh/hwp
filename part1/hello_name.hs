#!/usr/bin/env stack
{- stack script
    --resolver lts-11.6
    --install-ghc
    --package protolude
-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
 import Protolude

 main = do
   putText "What is your name?"
   name <- getLine
   putText ("Hello " <> name <> "!")
