.class public Lcom/miui/home/downloadmanager2/base/c;
.super Ljava/lang/Object;


# static fields
.field private static QS:Ljava/lang/String;

.field private static QT:Ljava/lang/String;

.field private static QU:Ljava/lang/String;

.field private static QV:Ljava/lang/String;

.field private static QW:Ljava/lang/String;

.field private static QX:Landroid/net/Uri;

.field private static QY:I

.field private static QZ:I

.field private static Ra:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lcom/miui/home/downloadmanager2/base/c;->QY:I

    sput v0, Lcom/miui/home/downloadmanager2/base/c;->QZ:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/home/downloadmanager2/base/c;->Ra:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final bn(I)V
    .locals 0

    sput p0, Lcom/miui/home/downloadmanager2/base/c;->QY:I

    return-void
.end method

.method protected static final bo(I)V
    .locals 0

    sput p0, Lcom/miui/home/downloadmanager2/base/c;->QZ:I

    return-void
.end method

.method protected static final ch(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/home/downloadmanager2/base/c;->QS:Ljava/lang/String;

    return-void
.end method

.method protected static final ci(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/home/downloadmanager2/base/c;->QT:Ljava/lang/String;

    return-void
.end method

.method public static final cj(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty app setting: dirName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/downloadmanager2/base/c;->QV:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/miui/home/downloadmanager2/base/c;->QV:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static final ck(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/miui/home/downloadmanager2/base/c;->QW:Ljava/lang/String;

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/downloadmanager2/base/c;->QV:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/downloadmanager2/base/c;->QX:Landroid/net/Uri;

    return-void
.end method

.method protected static final cl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/home/downloadmanager2/base/c;->QU:Ljava/lang/String;

    return-void
.end method

.method public static final pv()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QT:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty app setting: downloadReceiverClassName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QT:Ljava/lang/String;

    return-object v0
.end method

.method public static final pw()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QW:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty app setting: downloadProviderAuthorities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QW:Ljava/lang/String;

    return-object v0
.end method

.method public static final px()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QX:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty app setting: downloadProviderContentUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/miui/home/downloadmanager2/base/c;->QX:Landroid/net/Uri;

    return-object v0
.end method
