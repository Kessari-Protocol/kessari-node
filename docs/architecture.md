# Architecture

This document describes the high-level architecture of the Kessari node.

## Overview

The Kessari node is structured as a Rust workspace composed of several focused crates:

- **kessari-core** – shared types, traits, and protocol primitives
- **kessari-consensus** – consensus engine interface and validation logic
- **kessari-network** – peer-to-peer networking layer
- **kessari-storage** – persistent state and block storage
- **kessari-crypto** – cryptographic primitives (hashing, signing, verification)
- **kessari-rpc** – JSON-RPC / HTTP API server

The `node` binary wires these crates together and exposes a runnable process.

## Crate Dependency Graph

```
node
 ├── kessari-core
 ├── kessari-consensus
 │    └── kessari-core
 ├── kessari-network
 │    └── kessari-core
 ├── kessari-storage
 │    └── kessari-core
 ├── kessari-crypto
 └── kessari-rpc
      └── kessari-core
```
