.class final Lcom/lbe/security/service/core/sdk/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lbe/security/service/core/sdk/b/x;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/sdk/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/lbe/security/service/core/c/i;->a()Lcom/lbe/security/service/core/c/i;

    move-result-object v0

    const-string v1, "secsystemserver"

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/c/i;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v0}, Lcom/lbe/security/service/core/sdk/b/x;->a(Lcom/lbe/security/service/core/sdk/b/x;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lbe/security/service/core/sdk/b/x;->a(Lcom/lbe/security/service/core/sdk/b/x;I)V

    const/16 v0, 0xa

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v0}, Lcom/lbe/security/service/core/sdk/b/x;->b(Lcom/lbe/security/service/core/sdk/b/x;)Lcom/lbe/security/service/core/sdk/SDKMessage;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/core/sdk/SDKMessage;->a(IILandroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v0}, Lcom/lbe/security/service/core/sdk/b/x;->c(Lcom/lbe/security/service/core/sdk/b/x;)Lcom/lbe/security/service/core/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v1}, Lcom/lbe/security/service/core/sdk/b/x;->b(Lcom/lbe/security/service/core/sdk/b/x;)Lcom/lbe/security/service/core/sdk/SDKMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/sdk/g;->b(Lcom/lbe/security/service/core/sdk/SDKMessage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v0}, Lcom/lbe/security/service/core/sdk/b/x;->d(Lcom/lbe/security/service/core/sdk/b/x;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/core/sdk/b/y;->a:Lcom/lbe/security/service/core/sdk/b/x;

    invoke-static {v0}, Lcom/lbe/security/service/core/sdk/b/x;->e(Lcom/lbe/security/service/core/sdk/b/x;)V

    goto :goto_0
.end method