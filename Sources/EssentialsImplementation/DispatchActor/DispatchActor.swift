//
//  Created by Adam Stragner
//

// MARK: - DispatchActor

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public final actor DispatchActor: Actor {
    // MARK: Lifecycle

    public init(_ queue: DispatchQueue) {
        self.executor = DispatchExecutor(queue)
    }

    // MARK: Public

    public nonisolated var unownedExecutor: UnownedSerialExecutor {
        executor.asUnownedSerialExecutor()
    }

    // MARK: Private

    private let executor: DispatchExecutor
}
