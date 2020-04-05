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

### Is a Stream only a simple pipe?

No, a Stream also allows to process the data that flows inside it before it goes out.

To control the processing of the data inside a Stream, we use a **StreamTransformer**, which is nothing but

* a function that “captures” the data that flows inside the Stream
* does something with the data
* the outcome of this transformation is also a Stream

A StreamTransformer may be used to do any type of processing, such as, e.g.:

* filtering: to filter the data based on any type of condition,
* regrouping: to regroup data,
* modification: to apply any type of modification to the data,
* inject data to other streams,
* buffering,
* processing: do any kind of action/operation based on the data,

### Types of Streams

#### Single-subscription Streams

This type of Stream only allows a single listener during the whole lifetime of that Stream.

#### Broadcast Streams

This second type of Stream allows any number of listeners.

## References

https://www.didierboelens.com/2018/08/reactive-programming-streams-bloc/