.class public final Lcom/lbe/security/service/phone/provider/f;
.super Lcom/lbe/security/service/phone/provider/d;


# static fields
.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/lbe/security/service/phone/provider/d;->a:Landroid/net/Uri;

    const-string v1, "mms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/service/phone/provider/f;->b:Landroid/net/Uri;

    return-void
.end method