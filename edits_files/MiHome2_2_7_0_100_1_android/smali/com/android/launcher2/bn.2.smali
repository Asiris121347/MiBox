.class Lcom/android/launcher2/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Vg:Lcom/android/launcher2/cP;

.field final synthetic Vh:Landroid/content/Intent;

.field final synthetic Vi:Landroid/content/Context;

.field final synthetic Vj:Lcom/android/launcher2/Launcher;

.field final synthetic Vk:Lcom/android/launcher2/InstallShortcutReceiver;


# direct methods
.method constructor <init>(Lcom/android/launcher2/InstallShortcutReceiver;Lcom/android/launcher2/cP;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/bn;->Vk:Lcom/android/launcher2/InstallShortcutReceiver;

    iput-object p2, p0, Lcom/android/launcher2/bn;->Vg:Lcom/android/launcher2/cP;

    iput-object p3, p0, Lcom/android/launcher2/bn;->Vh:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher2/bn;->Vi:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher2/bn;->Vj:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/bn;->Vg:Lcom/android/launcher2/cP;

    invoke-virtual {v0}, Lcom/android/launcher2/cP;->uA()Lcom/android/launcher2/bP;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/bn;->Vh:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string v0, "InstallShortcutReceiver"

    const-string v1, "Failed to add shortcut because the extra shortcut intent is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/bn;->Vi:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/bn;->Vh:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher2/bP;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/bR;)Lcom/android/launcher2/eb;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/bn;->Vj:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->h(Lcom/android/launcher2/eb;)V

    goto :goto_0

    :cond_3
    const-string v0, "InstallShortcutReceiver"

    const-string v1, "Failed to add shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
