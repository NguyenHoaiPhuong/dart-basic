# Stream

## What is a Stream?

### Introduction

In order to easily visualize the notion of Stream, simply consider a **pipe with 2 ends**, only one allowing to insert something into it. When you insert something into the pipe, it flows inside the pipe and goes out by the other end.

In Flutter,

* the pipe is called a Stream
* to control the Stream, we usually(*) use a **StreamController**
* to insert something into the Stream, the **StreamController** exposes the "entrance", called a **StreamSink**, accessible via the **sink** property
* the way out of the Stream, is exposed by the **StreamController** via the **stream** property

### What can be conveyed by a Stream?

Everything and anything. From a value, an event, an object, a collection, a map, an error or even another Stream, any type of data may be conveyed by a Stream.

### How do I know that something is conveyed by a Stream?

When you need to be notified that something is conveyed by a Stream, you simply need to **listen** to the stream property of the **StreamController**.

When you define a **listener**, you receive a **StreamSubscription** object. This is via that **StreamSubscription** object that you will be notified that something happens at the level of the Stream.

As soon as there is at least one active listener, the Stream starts generating events to notify the active StreamSubscription object(s) each time:

* some data goes out from the stream,
* when some error has been sent to the stream,
* when the stream is closed.

The StreamSubscription object also allows you to:

* stop listening,
* pause,
* resume.

