class UnionFind {

    var id : [Int]
    var sz : [Int]

    init(_ n: Int) {
    	id = [Int]()
    	sz = [Int]()

    	for i in 0..<n {
    		id.append(i)
    		sz.append(1)
    	}
    }

    var size: Int {
    	get { return id.count }
    }

    private func root(_ index: Int) -> Int {
    	var i = index
    	while (i != id[i]) {
    		// make every other node in path point to its grandparent
    		// this will halve the path length for lookups
    		id[i] = id[id[i]]
    		i = id[i]
    	}
    	return i
    }

    public func connected(_ p: Int, _ q: Int) -> Bool {
    	return root(p) == root(q)
    }

    public func union(_ p: Int, _ q: Int) {
    	let i = root(p)
    	let j = root(q)
    	if i == j {
    		return
    	}
    	if sz[i] < sz[j] {
    		id[i] = j
    		sz[j] += sz[i]
    	}
    	else {
    		id[j] = i
    		sz[i] += sz[j]
    	}
    }
}
