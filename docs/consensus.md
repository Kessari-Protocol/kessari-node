# Consensus

This document describes the consensus mechanism used by the Kessari protocol.

## Overview

Kessari uses a BFT-style consensus protocol designed for fast finality and
Byzantine fault tolerance up to one-third of validators.

## Phases

1. **Propose** – a designated leader broadcasts a block proposal.
2. **Prevote** – validators broadcast prevote messages for the proposal.
3. **Precommit** – once a quorum of prevotes is observed, validators broadcast precommits.
4. **Commit** – a block is finalised once a quorum of precommits is collected.

## Safety & Liveness

- **Safety**: No two honest validators commit different blocks at the same height.
- **Liveness**: The network makes progress as long as fewer than one-third of validators are faulty.

## Implementation

Consensus logic lives in `crates/kessari-consensus`.
