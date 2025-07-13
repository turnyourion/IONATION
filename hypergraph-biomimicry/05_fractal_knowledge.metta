(: KernelGroup Subgraph)

(add-atom (Contains KernelGroup Stone1))
(add-atom (Contains KernelGroup Stone2))
(add-atom (Contains KernelGroup Stone3))

(add-atom (Inherits Stone1 KernelGroup 0.9))
(add-atom (Inherits Stone2 KernelGroup 0.9))

(= (get-subgraph-nodes $subgraph)
   (match &self (Contains $subgraph $node) $node))

(get-subgraph-nodes KernelGroup)
