.class public abstract Lmiui/mihome/resourcebrowser/activity/e;
.super Lmiui/mihome/resourcebrowser/activity/c;

# interfaces
.implements Lmiui/mihome/app/f;
.implements Lmiui/mihome/c/g;
.implements Lmiui/mihome/resourcebrowser/a;
.implements Lmiui/mihome/resourcebrowser/controller/c;


# instance fields
.field protected jG:Lmiui/mihome/resourcebrowser/b;

.field protected jH:Lmiui/mihome/resourcebrowser/ResourceContext;

.field protected jI:Lmiui/mihome/resourcebrowser/controller/f;

.field protected jJ:Lmiui/mihome/resourcebrowser/activity/n;

.field protected jK:Landroid/widget/ListView;

.field protected jL:Landroid/view/View;

.field private jM:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/mihome/resourcebrowser/activity/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jM:Z

    return-void
.end method


# virtual methods
.method protected G(I)I
    .locals 1

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cS()I

    move-result v0

    return v0
.end method

.method public a(Landroid/util/Pair;)V
    .locals 3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cP()Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "REQUEST_RES_INDEX"

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "REQUEST_RES_GROUP"

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "REQUEST_SOURCE_TYPE"

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/mihome/resourcebrowser/activity/e;->G(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lmiui/mihome/resourcebrowser/activity/e;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public varargs a([Lmiui/mihome/resourcebrowser/model/Resource;)V
    .locals 0

    return-void
.end method

.method public bL()V
    .locals 1

    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/c;->bL()V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->bM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cH()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cI()V

    goto :goto_0
.end method

.method protected cH()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cL()V

    invoke-static {}, Lcom/miui/home/a/i;->ly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0, v2}, Lmiui/mihome/resourcebrowser/activity/n;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e007e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jM:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cJ()V

    iput-boolean v2, p0, Lmiui/mihome/resourcebrowser/activity/e;->jM:Z

    :goto_1
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/activity/n;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cK()V

    goto :goto_1
.end method

.method protected cI()V
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/activity/n;->clean()V

    return-void
.end method

.method protected cJ()V
    .locals 0

    return-void
.end method

.method protected cK()V
    .locals 0

    return-void
.end method

.method protected cL()V
    .locals 2

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/b;->e(Lmiui/mihome/resourcebrowser/ResourceContext;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/b;->a(Lmiui/mihome/resourcebrowser/controller/f;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v1}, Lmiui/mihome/resourcebrowser/activity/n;->fr()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/b;->u(Ljava/util/List;)V

    return-void
.end method

.method protected cM()Lmiui/mihome/resourcebrowser/ResourceContext;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/b;->cM()Lmiui/mihome/resourcebrowser/ResourceContext;

    move-result-object v0

    return-object v0
.end method

.method protected cN()Lmiui/mihome/resourcebrowser/controller/f;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/b;->cN()Lmiui/mihome/resourcebrowser/controller/f;

    move-result-object v0

    return-object v0
.end method

.method protected cO()Lmiui/mihome/resourcebrowser/util/B;
    .locals 3

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lmiui/mihome/resourcebrowser/util/G;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-direct {v0, p0, v1, v2}, Lmiui/mihome/resourcebrowser/util/G;-><init>(Lmiui/mihome/resourcebrowser/activity/e;Lmiui/mihome/resourcebrowser/activity/n;Lmiui/mihome/resourcebrowser/ResourceContext;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/mihome/resourcebrowser/util/B;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-direct {v0, p0, v1, v2}, Lmiui/mihome/resourcebrowser/util/B;-><init>(Lmiui/mihome/resourcebrowser/activity/e;Lmiui/mihome/resourcebrowser/activity/n;Lmiui/mihome/resourcebrowser/ResourceContext;)V

    goto :goto_0
.end method

.method protected cP()Landroid/util/Pair;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v1}, Lmiui/mihome/resourcebrowser/ResourceContext;->getDetailActivityPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v2}, Lmiui/mihome/resourcebrowser/ResourceContext;->getDetailActivityClass()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract cQ()I
.end method

.method protected abstract cR()Lmiui/mihome/resourcebrowser/activity/n;
.end method

.method protected abstract cS()I
.end method

.method public cT()V
    .locals 2

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/mihome/resourcebrowser/activity/b;

    invoke-direct {v1, p0}, Lmiui/mihome/resourcebrowser/activity/b;-><init>(Lmiui/mihome/resourcebrowser/activity/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cU()V
    .locals 0

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/mihome/resourcebrowser/activity/e;->setProgressBarVisibility(Z)V

    return-void
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/mihome/resourcebrowser/activity/c;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->eV()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lmiui/mihome/resourcebrowser/b;->pp()Lmiui/mihome/resourcebrowser/b;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cM()Lmiui/mihome/resourcebrowser/ResourceContext;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cN()Lmiui/mihome/resourcebrowser/controller/f;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jG:Lmiui/mihome/resourcebrowser/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->v()V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/controller/f;->vJ()Lmiui/mihome/resourcebrowser/controller/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mihome/resourcebrowser/controller/d;->a(Lmiui/mihome/resourcebrowser/controller/c;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/controller/f;->vK()Lmiui/mihome/resourcebrowser/controller/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mihome/resourcebrowser/controller/g;->a(Lmiui/mihome/resourcebrowser/controller/c;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->w()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lmiui/mihome/resourcebrowser/activity/c;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCancelled()V
    .locals 2

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/controller/f;->vJ()Lmiui/mihome/resourcebrowser/controller/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mihome/resourcebrowser/controller/d;->b(Lmiui/mihome/resourcebrowser/controller/c;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/controller/f;->vK()Lmiui/mihome/resourcebrowser/controller/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mihome/resourcebrowser/controller/g;->b(Lmiui/mihome/resourcebrowser/controller/c;)V

    :cond_0
    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/c;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/c;->onLowMemory()V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/activity/n;->py()V

    sget-boolean v0, Lmiui/mihome/resourcebrowser/util/g;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Theme"

    const-string v1, "ThemeManger onLowMemory(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/activity/n;->clean()V

    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/c;->onPause()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lmiui/mihome/resourcebrowser/activity/e;->d(Ljava/util/List;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/mihome/resourcebrowser/activity/e;->setProgressBarVisibility(Z)V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lmiui/mihome/resourcebrowser/model/Resource;

    invoke-virtual {p0, p1}, Lmiui/mihome/resourcebrowser/activity/e;->a([Lmiui/mihome/resourcebrowser/model/Resource;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/c;->onResume()V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->bL()V

    return-void
.end method

.method protected setProgressBarVisibility(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_2

    :goto_3
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected v()V
    .locals 2

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cR()Lmiui/mihome/resourcebrowser/activity/n;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/activity/n;->a(Lmiui/mihome/resourcebrowser/controller/f;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cO()Lmiui/mihome/resourcebrowser/util/B;

    move-result-object v0

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jI:Lmiui/mihome/resourcebrowser/controller/f;

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/util/B;->a(Lmiui/mihome/resourcebrowser/controller/f;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->cS()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/util/B;->cb(I)V

    invoke-virtual {p0, v0}, Lmiui/mihome/resourcebrowser/activity/e;->a(Lmiui/mihome/app/d;)V

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v1, v0}, Lmiui/mihome/resourcebrowser/activity/n;->a(Lmiui/mihome/resourcebrowser/util/B;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/mihome/resourcebrowser/util/ResourceHelper;->d(Landroid/app/Activity;)V

    return-void
.end method

.method protected w()V
    .locals 2

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jK:Landroid/widget/ListView;

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->getHeaderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jK:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jK:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/e;->jJ:Lmiui/mihome/resourcebrowser/activity/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jK:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jH:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jK:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/e;->jL:Landroid/view/View;

    return-void
.end method