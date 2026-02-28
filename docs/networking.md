# Networking

This document describes the peer-to-peer networking layer of the Kessari node.

## Transport

The networking layer is built on top of `libp2p` and uses the following protocols:

- **TCP** – primary transport for direct peer connections
- **Noise** – authenticated encrypted channels
- **Yamux** – stream multiplexing

## Discovery

Peers are discovered via:

1. Bootstrap nodes specified in the node configuration.
2. Kademlia DHT for ongoing peer discovery.

## Message Types

| Message          | Description                              |
|------------------|------------------------------------------|
| `BlockAnnounce`  | Notify peers of a newly produced block   |
| `TxPropagate`    | Propagate a pending transaction          |
| `StateRequest`   | Request state snapshot from a peer       |
| `StateResponse`  | Respond with state snapshot data         |

## Implementation

Networking logic lives in `crates/kessari-network`.
