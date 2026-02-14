# kessari-node
kessari-node — Partial reference node implementation for the Kessari protocol. Exposes networking, state sync, and validation interfaces while core economic enforcement modules remain private during early development.

# kessari-node

Reference node interface for the Kessari protocol.

This repository exposes networking, state synchronization, and validation interfaces required to run and interact with a Kessari node during early development phases.

Core economic enforcement modules remain private while the protocol stabilizes.

---

## Purpose

The node is responsible for:

- peer communication
- transaction propagation
- state synchronization
- validation interface execution

It does not define final economic outcomes — those are resolved by internal invariant modules executed by validators.

---

## Current Scope

This implementation allows developers to:

- connect to the network
- submit transactions
- query state
- run local development nodes
- test integrations against the protocol interface

It is not yet a full validator release.

---

## Running a Local Node

```bash
git clone https://github.com/kessari-protocol/kessari-node
cd kessari-node
cargo run
```
http://localhost:7070

## Compatibility

Designed to operate with:

- kessari-sdk-js
- kessari-sdk-rust
- kessari-testnet

---

## Security Notice

Do not rely on this implementation for production value transfer.

Consensus and economic safety mechanisms are incomplete until mainnet release.

---

## Documentation

Protocol specification:  
https://github.com/kessari-protocol/kessari-docs

---

## Status

Development test node — subject to breaking changes.
