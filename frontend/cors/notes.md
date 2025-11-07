# Cross-Origin Resource Sharing (CORS)

- Same-Origin Policy (SOP): By default, web browsers enforce a security measure called the Same-Origin Policy, which prevents a document or script loaded from one origin (e.g., https://my-frontend.com) from making requests to another origin (e.g., https://my-backend-api.com). This prevents malicious websites from stealing data or performing unauthorized actions on a user's behalf.

- CORS's Role: CORS acts as an extension to SOP, allowing the server to explicitly tell the browser which external origins are safe to trust and share resources with. If the server's CORS configuration allows the request's origin, the browser permits the communication; otherwise, it blocks the request, resulting in a common "CORS error."
