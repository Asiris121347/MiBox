.class public abstract Lcom/b/a/a/a/c;
.super Ljava/io/InputStream;

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private a:[B

.field protected d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/a/c;->d:J

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/a/a/a/c;->a:[B

    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()J
.end method

.method public final c()I
    .locals 5

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/a/c;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    :try_start_1
    iput-wide v0, p0, Lcom/b/a/a/a/c;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public abstract read()I
.end method

.method public abstract read([BII)I
.end method

.method public final readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    int-to-byte v0, v0

    return v0
.end method

.method public final readChar()C
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/b/a/a/a/c;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/b/a/a/a/c;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    return-void
.end method

.method public final readInt()I
    .locals 5

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v2, v3

    :goto_0
    if-eqz v0, :cond_0

    if-ne v2, v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    const/16 v7, 0xa

    if-eq v0, v7, :cond_2

    invoke-virtual {p0, v5, v6}, Lcom/b/a/a/a/c;->a(J)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 6

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/b/a/a/a/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/b/a/a/a/c;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skipBytes(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a/c;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method
