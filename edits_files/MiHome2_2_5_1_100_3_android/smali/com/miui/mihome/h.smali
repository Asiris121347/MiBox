.class public Lcom/miui/mihome/h;
.super Ljava/lang/Object;


# static fields
.field private static final ET:Ljava/lang/Object;


# instance fields
.field private EU:Z

.field private EV:[J

.field private EW:[Ljava/lang/Object;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/miui/mihome/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/miui/mihome/h;->EU:Z

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/miui/mihome/h;->EV:[J

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    iput v2, p0, Lcom/miui/mihome/h;->mSize:I

    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5

    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    return v0

    :cond_3
    aget-wide v1, p0, v0

    cmp-long v1, v1, p3

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 9

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/mihome/h;->mSize:I

    iget-object v4, p0, Lcom/miui/mihome/h;->EV:[J

    iget-object v5, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget-wide v7, v4, v1

    aput-wide v7, v4, v0

    aput-object v6, v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/miui/mihome/h;->EU:Z

    iput v0, p0, Lcom/miui/mihome/h;->mSize:I

    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/mihome/h;->EV:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/mihome/h;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/mihome/h;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    sget-object v2, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mihome/h;->EU:Z

    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/mihome/h;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/mihome/h;->EV:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/mihome/h;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/mihome/h;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/mihome/h;->EV:[J

    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/miui/mihome/h;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/miui/mihome/h;->ET:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/mihome/h;->EV:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/mihome/h;->EU:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    iget-object v2, p0, Lcom/miui/mihome/h;->EV:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/miui/mihome/h;->gc()V

    iget-object v0, p0, Lcom/miui/mihome/h;->EV:[J

    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/miui/mihome/h;->binarySearch([JIIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    iget-object v2, p0, Lcom/miui/mihome/h;->EV:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/mihome/h;->EV:[J

    iget-object v4, p0, Lcom/miui/mihome/h;->EV:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/miui/mihome/h;->EV:[J

    iput-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lcom/miui/mihome/h;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/mihome/h;->EV:[J

    iget-object v2, p0, Lcom/miui/mihome/h;->EV:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/miui/mihome/h;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/miui/mihome/h;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lcom/miui/mihome/h;->EV:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Lcom/miui/mihome/h;->EW:[Ljava/lang/Object;

    aput-object p3, v1, v0

    iget v0, p0, Lcom/miui/mihome/h;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/mihome/h;->mSize:I

    goto/16 :goto_0
.end method
