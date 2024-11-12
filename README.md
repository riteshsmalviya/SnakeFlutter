### Multiplayer Snake Game

**Technology Used:** Flutter, Firestore (Realtime Database)

**Overview:**
The Multiplayer Snake Game is a simple yet engaging project designed to allow multiple players to connect and play the classic Snake game together in real-time. The game leverages Firestore for real-time data synchronization between players, ensuring seamless interaction and a smooth gaming experience.

**Key Features:**
1. Create Room: The host can create a game room where other players can join.

2. Join Room: Players can join an existing room using a room code, allowing them to connect with other players instantly.

3. Waiting Screen: Once players join, they wait in a lobby until all players are ready, creating a sense of anticipation and readiness for the game.

4. Gameplay Page: This is where the core Snake game occurs. Each player controls their snake, competing or collaborating in real-time with other players.

5. Result Display: At the end of each game, results are shown to display each player's performance, ranking them based on their gameplay.

**Technical Highlights:**
Flutter: Provides a flexible UI framework for smooth, cross-platform gameplay and interaction.

Firestore (Realtime Database): Manages game state, player positions, and room status with low latency, ensuring real-time updates across devices.
