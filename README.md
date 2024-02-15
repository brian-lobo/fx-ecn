The problem statement revolves around designing an Electronic Communication Network (ECN) tailored for trading FX currency pairs, with several key requirements:

1. WebSocket Connectivity for Trading: The ECN must support WebSocket connectivity, enabling users to connect seamlessly for trading activities related to FX currency pairs. This ensures real-time data transmission and efficient communication between the platform and the users.

2. Basic Authentication for User Login: Implementing a basic level of authentication is crucial to ensure the security of the platform. This authentication mechanism verifies the identity of users during the login process, safeguarding their accounts and sensitive information from unauthorized access.

3. Order Management System (OMS) Design: Developing a robust Order Management System is essential for efficient trading operations. Users should be able to subscribe to order book market data for various currency pairs, enabling them to stay updated on the latest market trends and make informed trading decisions.

4. Support for Market and Limit Orders: The ECN should allow users to place both market and limit orders. Market orders execute immediately at the current market price, while limit orders enable users to specify a price at which they are willing to buy or sell, providing greater control over their trading strategies.

5. High Volume and Performance Handling: Ensuring high volume and performance handling capabilities is critical for a trading platform, especially in a fast-paced environment like the FX market. The ECN must be able to efficiently process a large number of orders and market data updates without compromising speed or reliability, thereby providing a seamless trading experience for users.

------------

Project Structure:
- Organize into clear and logical directories (e.g., src, include, tests, docs).
- Separate concerns, keeping code for each class/component distinct.
- Utilize a build system like CMake

------------

One part of it is write some core classes that should include
1. Service class based on reactor pattern - https://github.com/cameron314/concurrentqueue
2. Web Socket communication class - can use uWebsocket
3. Generic Logger - I suggest use SpdLogger https://github.com/gabime/spdlog
4. Object modeling - I suggest to use FBE https://chronoxor.github.io/FastBinaryEncoding/

then we can move on design OMS

OMS Classes for ECN Service --
I. MarketDataListener:

Reads/simulates FX currency pair data continuously.
Parses and processes data into usable format.
Handles errors gracefully.
Optional: Simulates market variations (noise, patterns, tools).
II. OrderQueue:

Stores pending orders with price-time-priority.
Supports efficient insertion, removal, modification.
Offers methods for order submission, cancellation, update.
Implements robust data structure (sorted list, heap).
III. MarketDataDistributor:

Receives market data from listener.
Broadcasts updates to interested parties (OrderManager, TradeDistributor).
Optional: Filters, aggregates data.
Uses pub/sub or similar mechanism for efficient distribution.
IV. TradeDistributor:

Receives executed trades from OrderManager.
Broadcasts trade updates to interested parties (risk management, logs).
Optional: Aggregates, processes trade data.
Uses similar distribution mechanism as MarketDataDistributor.

V. OrderManager:

Receives new orders from various sources.
Validates orders against rules and constraints.
Submits valid orders to OrderQueue for matching.
Matches orders with counterparties based on rules (best bid/ask).
Generates executed trades and sends them to TradeDistributor.
Handles cancellations, modifications.
Optional: Advanced order types (stop-loss, limit).
Additional Considerations:

Modular, well-organized code with clear documentation.
Thorough unit and integration testing.
End-to-end testing for realistic scenarios.
API documentation using tools like Sphinx or Swagger.
