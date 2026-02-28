# State Machine

This document describes the state machine model used by the Kessari protocol.

## Overview

The Kessari state machine processes ordered transactions to produce deterministic
state transitions. Every validator executes the same transactions in the same order
and must arrive at the same resulting state root.

## State

The global state is a Merkle-Patricia trie containing:

- Account balances
- Validator registry
- Smart contract storage
- Protocol parameters

## Transitions

A state transition is triggered by:

1. A committed block containing one or more transactions.
2. An end-of-epoch event (validator set rotation, rewards distribution).

## Execution Model

Transactions are validated and applied atomically. A failed transaction reverts
all of its state changes without affecting other transactions in the block.

## Implementation

State machine logic lives in `crates/kessari-core` and `crates/kessari-storage`.
