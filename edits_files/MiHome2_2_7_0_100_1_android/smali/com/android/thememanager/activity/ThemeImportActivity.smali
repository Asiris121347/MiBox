.class public Lcom/android/thememanager/activity/ThemeImportActivity;
.super Lmiui/mihome/resourcebrowser/activity/W;


# instance fields
.field protected agR:Lcom/android/thememanager/activity/X;

.field protected kd:Lmiui/mihome/resourcebrowser/ResourceContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/mihome/resourcebrowser/activity/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/actionbarsherlock/a/k;)Z
    .locals 2

    invoke-interface {p1}, Lcom/actionbarsherlock/a/k;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lmiui/mihome/resourcebrowser/activity/W;->a(Lcom/actionbarsherlock/a/k;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lmiui/mihome/resourcebrowser/activity/W;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REQUEST_RES_CONTEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mihome/resourcebrowser/ResourceContext;

    iput-object v0, p0, Lcom/android/thememanager/activity/ThemeImportActivity;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    iget-object v0, p0, Lcom/android/thememanager/activity/ThemeImportActivity;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->gT()Lcom/actionbarsherlock/b/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/b/f;->setHomeButtonEnabled(Z)V

    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/b/f;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->sg()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->uP()Landroid/support/v4/app/D;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/thememanager/activity/ThemeImportActivity;->tQ()Lcom/android/thememanager/activity/X;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/activity/ThemeImportActivity;->agR:Lcom/android/thememanager/activity/X;

    const v1, 0x7f080081

    iget-object v2, p0, Lcom/android/thememanager/activity/ThemeImportActivity;->agR:Lcom/android/thememanager/activity/X;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/D;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    invoke-virtual {v0}, Landroid/support/v4/app/D;->commit()I

    iget-object v0, p0, Lcom/android/thememanager/activity/ThemeImportActivity;->agR:Lcom/android/thememanager/activity/X;

    invoke-virtual {v0, v3}, Lcom/android/thememanager/activity/X;->q(Z)V

    return-void
.end method

.method protected tQ()Lcom/android/thememanager/activity/X;
    .locals 1

    new-instance v0, Lcom/android/thememanager/activity/X;

    invoke-direct {v0}, Lcom/android/thememanager/activity/X;-><init>()V

    return-object v0
.end method

.method protected u()I
    .locals 1

    const v0, 0x7f03007c

    return v0
.end method