.class public Lcom/android/launcher2/LauncherPreferenceActivity;
.super Lcom/android/launcher2/O;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final Bh:Ljava/lang/String;

.field public static final Bi:Ljava/lang/String;


# instance fields
.field private Bj:Lcom/android/launcher2/V5Preference;

.field private Bk:Lcom/android/launcher2/V5Preference;

.field private Bl:Lcom/android/launcher2/V5Preference;

.field private Bm:Lcom/android/launcher2/V5Preference;

.field private Bn:Lcom/android/launcher2/V5Preference;

.field private Bo:Z

.field private Bp:Lcom/android/launcher2/V5Preference;

.field private Bq:Lcom/android/launcher2/V5Preference;

.field private Br:Lcom/android/launcher2/V5Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/util/c;->iA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Debug/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bh:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/home/a/i;->IU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/O;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bo:Z

    return-void
.end method

.method public static ai(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/launcher2/Launcher;->KL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x1fc

    const/4 v0, 0x1

    const/4 v3, -0x1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v4, v3, v3}, Lcom/miui/home/resourcebrowser/a/b;->a(Ljava/io/File;III)Z

    invoke-static {p1, p2}, Lcom/android/launcher2/gadget/W;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f0e0071

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v2, 0x7f0e0070

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v3, v3}, Lcom/miui/home/resourcebrowser/a/b;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method


# virtual methods
.method public aj(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public iU()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f020316

    const v3, 0x7f020313

    invoke-super {p0, p1}, Lcom/android/launcher2/O;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bo:Z

    if-eqz v0, :cond_0

    const-string v0, "log_file"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bm:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bm:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bm:Lcom/android/launcher2/V5Preference;

    const v1, 0x7f02031c

    invoke-virtual {v0, v1}, Lcom/android/launcher2/V5Preference;->ch(I)V

    :goto_0
    const-string v0, "check_for_updates"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bj:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bj:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bj:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "pref_backup_restore_key"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bk:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bk:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bk:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "pref_share_launcher_key"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bl:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bl:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bl:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "key_about"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bn:Lcom/android/launcher2/V5Preference;

    invoke-static {p0}, Lcom/miui/home/a/p;->bj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e01b9

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bn:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/V5Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bn:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "pref_launcher_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bp:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bp:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bp:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "pref_locker_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bq:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bq:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Bq:Lcom/android/launcher2/V5Preference;

    const v1, 0x7f020319

    invoke-virtual {v0, v1}, Lcom/android/launcher2/V5Preference;->ch(I)V

    const-string v0, "pref_ringtone_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/V5Preference;

    iput-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Br:Lcom/android/launcher2/V5Preference;

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Br:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/V5Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->Br:Lcom/android/launcher2/V5Preference;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/V5Preference;->ch(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->iU()V

    return-void

    :cond_0
    const-string v0, "pref_about_help"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "log_file"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->aj(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/android/launcher2/O;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_for_updates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/mihome/common/a/a;->bA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/mihome/versioncheck/GrayVersionCheckerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_where"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string v1, "log_file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-hh-mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/launcher2/LauncherPreferenceActivity;->Bi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/e;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher2/LauncherPreferenceActivity;->Bh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/e;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherPreferenceActivity;->x(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v1, "pref_backup_restore_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/LauncherBackupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "pref_share_launcher_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/setting/ShareLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "pref_launcher_setting_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/LauncherSettingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "pref_locker_setting_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/LockerSettingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "pref_ringtone_setting_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/RingtoneSettingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
