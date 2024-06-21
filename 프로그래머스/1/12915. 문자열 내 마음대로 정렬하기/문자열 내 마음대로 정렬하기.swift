func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted { lhs, rhs in
        let lhsChar = lhs[lhs.index(lhs.startIndex, offsetBy: n)]
        let rhsChar = rhs[rhs.index(rhs.startIndex, offsetBy: n)]
        return lhsChar == rhsChar ? lhs < rhs : lhsChar < rhsChar
    }
}