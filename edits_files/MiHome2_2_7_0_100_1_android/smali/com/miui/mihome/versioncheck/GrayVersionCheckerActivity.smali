.class public Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;
.super Landroid/app/Activity;


# instance fields
.field private gH:Landroid/widget/RelativeLayout;

.field private gI:Landroid/widget/RelativeLayout;

.field private gJ:Landroid/widget/LinearLayout;

.field private gK:Landroid/widget/TextView;

.field private gL:Landroid/widget/TextView;

.field private gM:Landroid/widget/TextView;

.field private gN:Landroid/widget/TextView;

.field private gO:Landroid/widget/TextView;

.field private gP:Landroid/widget/ProgressBar;

.field private gQ:Lcom/miui/mihome/versioncheck/a;

.field private gR:Ljava/lang/String;

.field private gS:Ljava/lang/String;

.field private gT:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/mihome/versioncheck/b;

    invoke-direct {v0, p0}, Lcom/miui/mihome/versioncheck/b;-><init>(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gT:Ljava/lang/Runnable;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gJ:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gH:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/mihome/versioncheck/f;

    invoke-direct {v1, p0}, Lcom/miui/mihome/versioncheck/f;-><init>(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    iget-object v1, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/mihome/versioncheck/a;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gM:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gM:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/mihome/versioncheck/e;

    invoke-direct {v1, p0}, Lcom/miui/mihome/versioncheck/e;-><init>(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bm()V

    return-void
.end method

.method static synthetic b(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gT:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bl()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "version_update_log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gS:Ljava/lang/String;

    new-instance v0, Lcom/miui/mihome/versioncheck/a;

    invoke-direct {v0}, Lcom/miui/mihome/versioncheck/a;-><init>()V

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    return-void
.end method

.method private bm()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gJ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gH:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gP:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gO:Landroid/widget/TextView;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bn()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gJ:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gH:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gP:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gO:Landroid/widget/TextView;

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bo()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gJ:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gH:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gP:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gO:Landroid/widget/TextView;

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bp()V
    .locals 2

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    invoke-virtual {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/mihome/versioncheck/a;->ai(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gK:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    invoke-virtual {v1}, Lcom/miui/mihome/versioncheck/a;->gR()Lcom/miui/mihome/versioncheck/i;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/mihome/versioncheck/i;->XG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bn()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)Lcom/miui/mihome/versioncheck/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bp()V

    return-void
.end method

.method static synthetic g(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bo()V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gH:Landroid/widget/RelativeLayout;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gI:Landroid/widget/RelativeLayout;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gJ:Landroid/widget/LinearLayout;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gK:Landroid/widget/TextView;

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gL:Landroid/widget/TextView;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gM:Landroid/widget/TextView;

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gN:Landroid/widget/TextView;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gO:Landroid/widget/TextView;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gP:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    iget-object v1, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/mihome/versioncheck/a;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->B(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gN:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/mihome/versioncheck/d;

    invoke-direct {v1, p0}, Lcom/miui/mihome/versioncheck/d;-><init>(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gO:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/mihome/versioncheck/c;

    invoke-direct {v1, p0}, Lcom/miui/mihome/versioncheck/c;-><init>(Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gQ:Lcom/miui/mihome/versioncheck/a;

    iget-object v1, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/mihome/versioncheck/a;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bm()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->bl()V

    invoke-direct {p0}, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->initViews()V

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;->gT:Ljava/lang/Runnable;

    const-string v3, "ShowUpdateLogThread"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method