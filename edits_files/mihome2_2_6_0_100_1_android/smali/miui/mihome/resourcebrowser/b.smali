.class public Lmiui/mihome/resourcebrowser/b;
.super Ljava/lang/Object;


# static fields
.field private static PY:Lmiui/mihome/resourcebrowser/b;


# instance fields
.field private PZ:Landroid/content/Context;

.field private Qa:Lmiui/mihome/resourcebrowser/ResourceContext;

.field private Qb:Lmiui/mihome/resourcebrowser/controller/f;

.field private Qc:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/mihome/resourcebrowser/b;

    invoke-direct {v0}, Lmiui/mihome/resourcebrowser/b;-><init>()V

    sput-object v0, Lmiui/mihome/resourcebrowser/b;->PY:Lmiui/mihome/resourcebrowser/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pt()Lmiui/mihome/resourcebrowser/b;
    .locals 1

    sget-object v0, Lmiui/mihome/resourcebrowser/b;->PY:Lmiui/mihome/resourcebrowser/b;

    return-object v0
.end method


# virtual methods
.method public a(Lmiui/mihome/resourcebrowser/controller/f;)V
    .locals 0

    iput-object p1, p0, Lmiui/mihome/resourcebrowser/b;->Qb:Lmiui/mihome/resourcebrowser/controller/f;

    return-void
.end method

.method public cN()Lmiui/mihome/resourcebrowser/ResourceContext;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/b;->Qa:Lmiui/mihome/resourcebrowser/ResourceContext;

    return-object v0
.end method

.method public cO()Lmiui/mihome/resourcebrowser/controller/f;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/b;->Qb:Lmiui/mihome/resourcebrowser/controller/f;

    return-object v0
.end method

.method public e(Lmiui/mihome/resourcebrowser/ResourceContext;)V
    .locals 0

    iput-object p1, p0, Lmiui/mihome/resourcebrowser/b;->Qa:Lmiui/mihome/resourcebrowser/ResourceContext;

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/b;->PZ:Landroid/content/Context;

    return-object v0
.end method

.method public pu()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/mihome/resourcebrowser/b;->Qc:Ljava/util/List;

    return-object v0
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmiui/mihome/resourcebrowser/b;->PZ:Landroid/content/Context;

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiui/mihome/resourcebrowser/b;->Qc:Ljava/util/List;

    return-void
.end method
