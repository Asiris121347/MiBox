.class public Lmiui/mihome/resourcebrowser/activity/z;
.super Lmiui/mihome/resourcebrowser/activity/o;

# interfaces
.implements Lmiui/mihome/resourcebrowser/controller/online/L;


# instance fields
.field private WZ:Ljava/lang/String;

.field private Xa:Lmiui/mihome/resourcebrowser/controller/online/I;

.field private Xb:I

.field private final Xc:I

.field private lh:Ljava/util/Map;

.field private li:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lmiui/mihome/resourcebrowser/activity/d;Lmiui/mihome/resourcebrowser/ResourceContext;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiui/mihome/resourcebrowser/activity/o;-><init>(Lmiui/mihome/resourcebrowser/activity/d;Lmiui/mihome/resourcebrowser/ResourceContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xc:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->li:Ljava/util/Map;

    invoke-direct {p0, p2}, Lmiui/mihome/resourcebrowser/activity/z;->f(Lmiui/mihome/resourcebrowser/ResourceContext;)V

    return-void
.end method

.method static synthetic a(Lmiui/mihome/resourcebrowser/activity/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->WZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lmiui/mihome/resourcebrowser/activity/z;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/mihome/resourcebrowser/activity/z;->i(Ljava/util/List;)V

    return-void
.end method

.method private f(Lmiui/mihome/resourcebrowser/ResourceContext;)V
    .locals 1

    new-instance v0, Lmiui/mihome/resourcebrowser/controller/online/I;

    invoke-direct {v0, p1}, Lmiui/mihome/resourcebrowser/controller/online/I;-><init>(Lmiui/mihome/resourcebrowser/ResourceContext;)V

    iput-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xa:Lmiui/mihome/resourcebrowser/controller/online/I;

    return-void
.end method

.method private h(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lmiui/mihome/resourcebrowser/activity/U;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/mihome/resourcebrowser/activity/U;-><init>(Lmiui/mihome/resourcebrowser/activity/z;Lmiui/mihome/resourcebrowser/activity/C;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/activity/U;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private i(Ljava/util/List;)V
    .locals 5

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mihome/resourcebrowser/model/Resource;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/model/Resource;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mihome/resourcebrowser/model/Resource;

    if-eqz v1, :cond_0

    new-instance v4, Lmiui/mihome/resourcebrowser/model/a;

    invoke-direct {v4, v1}, Lmiui/mihome/resourcebrowser/model/a;-><init>(Lmiui/mihome/resourcebrowser/model/Resource;)V

    invoke-virtual {v4}, Lmiui/mihome/resourcebrowser/model/a;->getStatus()Lmiui/mihome/resourcebrowser/model/ResourceStatus;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lmiui/mihome/resourcebrowser/model/ResourceStatus;->setOld(Z)V

    :cond_0
    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/model/Resource;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mihome/resourcebrowser/model/Resource;

    new-instance v2, Lmiui/mihome/resourcebrowser/model/a;

    invoke-direct {v2, v0}, Lmiui/mihome/resourcebrowser/model/a;-><init>(Lmiui/mihome/resourcebrowser/model/Resource;)V

    invoke-virtual {v2}, Lmiui/mihome/resourcebrowser/model/a;->getStatus()Lmiui/mihome/resourcebrowser/model/ResourceStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/mihome/resourcebrowser/model/ResourceStatus;->setOld(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/z;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected a(Lmiui/mihome/resourcebrowser/model/Resource;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lmiui/mihome/resourcebrowser/activity/o;->a(Lmiui/mihome/resourcebrowser/model/Resource;I)I

    move-result v0

    const v1, 0x7f020142

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected a(Landroid/view/View;Lmiui/mihome/resourcebrowser/model/Resource;II)V
    .locals 3

    const v2, 0x7f08014e

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/mihome/resourcebrowser/activity/o;->a(Landroid/view/View;Lmiui/mihome/resourcebrowser/model/Resource;II)V

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yG:Landroid/app/Activity;

    invoke-virtual {p2}, Lmiui/mihome/resourcebrowser/model/Resource;->getProductPrice()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/mihome/resourcebrowser/util/ResourceHelper;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, p2, v0}, Lmiui/mihome/resourcebrowser/activity/z;->a(Landroid/view/View;ILmiui/mihome/resourcebrowser/model/Resource;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected aO()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lmiui/mihome/resourcebrowser/activity/n;

    invoke-direct {v1, p0}, Lmiui/mihome/resourcebrowser/activity/n;-><init>(Lmiui/mihome/resourcebrowser/activity/z;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/z;->hz()Lmiui/mihome/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/mihome/resourcebrowser/activity/n;->a(Lmiui/mihome/c/g;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected ai(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/mihome/resourcebrowser/activity/o;->ai(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yG:Landroid/app/Activity;

    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v2}, Lmiui/mihome/resourcebrowser/ResourceContext;->getResourceTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yG:Landroid/app/Activity;

    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v2}, Lmiui/mihome/resourcebrowser/ResourceContext;->getResourceTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cz(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lmiui/mihome/resourcebrowser/activity/z;->WZ:Ljava/lang/String;

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xa:Lmiui/mihome/resourcebrowser/controller/online/I;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/z;->WZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/mihome/resourcebrowser/controller/online/I;->dE(Ljava/lang/String;)Lmiui/mihome/resourcebrowser/controller/online/RequestUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mihome/resourcebrowser/ResourceContext;->setListUrl(Lmiui/mihome/resourcebrowser/controller/online/RequestUrl;)V

    return-void
.end method

.method protected dq()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lmiui/mihome/resourcebrowser/activity/B;

    invoke-direct {v1, p0}, Lmiui/mihome/resourcebrowser/activity/B;-><init>(Lmiui/mihome/resourcebrowser/activity/z;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/z;->hz()Lmiui/mihome/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/mihome/resourcebrowser/activity/B;->a(Lmiui/mihome/c/g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected e(Ljava/util/List;)V
    .locals 5

    invoke-super {p0, p1}, Lmiui/mihome/resourcebrowser/activity/o;->e(Ljava/util/List;)V

    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/z;->hE()V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->li:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mihome/resourcebrowser/model/Resource;

    new-instance v2, Lmiui/mihome/resourcebrowser/model/d;

    iget-object v3, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-direct {v2, v0, v3}, Lmiui/mihome/resourcebrowser/model/d;-><init>(Lmiui/mihome/resourcebrowser/model/Resource;Lmiui/mihome/resourcebrowser/ResourceContext;)V

    invoke-virtual {v2}, Lmiui/mihome/resourcebrowser/model/d;->getMetaPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/mihome/resourcebrowser/util/ResourceHelper;->dj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/model/Resource;->getHash()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-static {v0, v3}, Lmiui/mihome/resourcebrowser/util/ResourceHelper;->d(Lmiui/mihome/resourcebrowser/model/Resource;Lmiui/mihome/resourcebrowser/ResourceContext;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/mihome/resourcebrowser/activity/z;->kd:Lmiui/mihome/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/mihome/resourcebrowser/ResourceContext;->isVersionSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/mihome/resourcebrowser/activity/z;->lh:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmiui/mihome/resourcebrowser/activity/z;->li:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->li:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/mihome/resourcebrowser/activity/z;->li:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lmiui/mihome/resourcebrowser/activity/z;->h(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method protected hE()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xb:I

    iget v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->Xb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lmiui/mihome/resourcebrowser/activity/o;->hE()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected k(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yH:Lmiui/mihome/resourcebrowser/activity/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yH:Lmiui/mihome/resourcebrowser/activity/d;

    invoke-virtual {v0}, Lmiui/mihome/resourcebrowser/activity/d;->bN()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/mihome/resourcebrowser/activity/z;->yG:Landroid/app/Activity;

    const v1, 0x7f0e0130

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Lmiui/mihome/resourcebrowser/activity/z;->hE()V

    return-void
.end method