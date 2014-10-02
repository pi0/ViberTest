.class public Lcom/viber/voip/backgrounds/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Lcom/viber/voip/backgrounds/a;


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Lcom/viber/voip/backgrounds/b/a;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/backgrounds/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/viber/voip/util/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/o",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field private i:Lcom/viber/jni/PhoneControllerDelegateAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/a;->a:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "\\B1([0-9a-f]{7})(_tail)*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    .line 568
    new-instance v0, Lcom/viber/voip/backgrounds/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/h;-><init>(Lcom/viber/voip/backgrounds/a;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a;->i:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 94
    sget-object v0, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a;->d:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/viber/voip/util/o;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-string/jumbo v2, "BackgroundController"

    const v3, 0x3dcccccd

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    .line 97
    new-instance v0, Lcom/viber/voip/backgrounds/b/a;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/backgrounds/b;

    invoke-direct {v2, p0}, Lcom/viber/voip/backgrounds/b;-><init>(Lcom/viber/voip/backgrounds/a;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/viber/voip/backgrounds/b/a;-><init>(Landroid/os/Handler;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a;->e:Lcom/viber/voip/backgrounds/b/a;

    .line 152
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 155
    sget-object v0, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->f(Ljava/lang/String;)Z

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/a;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/backgrounds/a;->h:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object p1
.end method

.method public static a()Lcom/viber/voip/backgrounds/a;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/viber/voip/backgrounds/a;->c:Lcom/viber/voip/backgrounds/a;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/viber/voip/backgrounds/a;

    invoke-direct {v0}, Lcom/viber/voip/backgrounds/a;-><init>()V

    sput-object v0, Lcom/viber/voip/backgrounds/a;->c:Lcom/viber/voip/backgrounds/a;

    .line 88
    sget-object v0, Lcom/viber/voip/backgrounds/a;->c:Lcom/viber/voip/backgrounds/a;

    invoke-direct {v0}, Lcom/viber/voip/backgrounds/a;->h()V

    .line 90
    :cond_0
    sget-object v0, Lcom/viber/voip/backgrounds/a;->c:Lcom/viber/voip/backgrounds/a;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/viber/voip/backgrounds/q;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 616
    if-nez p2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;Landroid/graphics/Bitmap;)[Landroid/net/Uri;

    move-result-object v0

    .line 621
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 622
    aget-object v0, v0, v4

    .line 624
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    .line 626
    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 627
    invoke-static {}, Lcom/viber/voip/settings/j;->as()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 628
    invoke-static {}, Lcom/viber/voip/settings/j;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cropAndSaveBackground :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 608
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 609
    invoke-direct {p0, p1, v0, p3}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/viber/voip/backgrounds/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/a;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/viber/voip/backgrounds/q;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/a;Landroid/content/Context;Ljava/io/File;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Ljava/io/File;Lcom/viber/voip/backgrounds/q;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 454
    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 455
    invoke-static {}, Lcom/viber/voip/settings/j;->as()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 456
    invoke-static {}, Lcom/viber/voip/settings/j;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 457
    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 751
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->isShortStandardBackgroundID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-static {p0}, Lcom/viber/voip/backgrounds/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(I)[Ljava/lang/String;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 755
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/hv;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    .line 757
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/backgrounds/p;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/viber/voip/backgrounds/p;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;)[Landroid/net/Uri;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_1

    aget-object v0, v1, v4

    if-eqz v0, :cond_1

    aget-object v0, v1, v5

    if-eqz v0, :cond_1

    .line 761
    new-array v0, v6, [Ljava/lang/String;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 765
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    .line 804
    :goto_0
    new-array v1, v3, [Ljava/lang/String;

    .line 805
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->lengthenStandartBackgroundID(Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertBackgroundIdFromLibId input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " output: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 807
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 803
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)J
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 795
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    new-array v1, v3, [J

    .line 797
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->shortenStandardBackgroundID(Ljava/lang/String;[J)I

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shortenStandardBackgroundID input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " output: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v2, v1, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 799
    aget-wide v0, v1, v4

    return-wide v0
.end method

.method static synthetic b(Lcom/viber/voip/backgrounds/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/a;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/backgrounds/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private c(I)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/backgrounds/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_1

    .line 526
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 527
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/viber/voip/backgrounds/a;->a(Ljava/lang/String;I)Lcom/viber/voip/backgrounds/q;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 535
    return-object v1
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/backgrounds/a;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->h:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    return-void
.end method

.method private static d(I)[Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "obtainGroupBackground : DEFAULT id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 770
    new-instance v1, Lcom/viber/voip/backgrounds/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/backgrounds/s;-><init>(I)V

    .line 772
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v7}, Lcom/viber/voip/backgrounds/s;->a(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v6}, Lcom/viber/voip/backgrounds/s;->a(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string/jumbo v0, "obtainGroupBackground : ALREADY EXIST. Nothing to cut!"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 774
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/viber/voip/backgrounds/s;->a(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {v1, v7}, Lcom/viber/voip/backgrounds/s;->a(Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 791
    :goto_0
    return-object v0

    .line 777
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/viber/voip/backgrounds/s;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 779
    sget v0, Lcom/viber/voip/backgrounds/n;->b:I

    invoke-static {p0, v0}, Lcom/viber/voip/backgrounds/b/a;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 781
    :try_start_0
    invoke-virtual {v1}, Lcom/viber/voip/backgrounds/s;->d()V

    .line 782
    new-instance v2, Lcom/viber/voip/util/upload/d;

    iget-object v3, v1, Lcom/viber/voip/backgrounds/s;->g:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/viber/voip/backgrounds/s;->g:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/d;->d()V
    :try_end_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_1
    :goto_1
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;)[Landroid/net/Uri;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_2

    aget-object v0, v1, v6

    if-eqz v0, :cond_2

    aget-object v0, v1, v7

    if-eqz v0, :cond_2

    .line 789
    new-array v0, v8, [Ljava/lang/String;

    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "obtainGroupBackground : can\'t download background "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 791
    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/viber/voip/backgrounds/a;)Lcom/viber/voip/backgrounds/b/a;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->e:Lcom/viber/voip/backgrounds/b/a;

    return-object v0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/a;->j()V

    .line 162
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/a;->k()V

    .line 163
    return-void
.end method

.method private i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/backgrounds/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a;->b()Ljava/util/List;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/o;

    .line 182
    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    const-string/jumbo v3, "loadPackages() pkg is not deployed yet. Try to download it."

    invoke-static {v3}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/a;->d(Lcom/viber/voip/backgrounds/o;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    return-object v1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->i:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 540
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/backgrounds/f;-><init>(Lcom/viber/voip/backgrounds/a;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->registerMediaMountListener(Lcom/viber/voip/du;)V

    .line 559
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/backgrounds/o;)I
    .locals 3
    .parameter

    .prologue
    .line 252
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bg_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 332
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackgroundBitmap backgroundUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",cache.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    invoke-virtual {v3}, Lcom/viber/voip/util/o;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",put:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    invoke-virtual {v3}, Lcom/viber/voip/util/o;->putCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 343
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v2

    .line 346
    const/4 v3, 0x0

    :try_start_1
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v4, 0x1

    invoke-static {v1, p1, v3, v2, v4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 362
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    monitor-enter v1

    .line 364
    :try_start_2
    iget-object v2, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    invoke-virtual {v2, p1, v0}, Lcom/viber/voip/util/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 337
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackgroundBitmap IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->as()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 354
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a;->d()V

    goto :goto_1

    .line 356
    :catch_1
    move-exception v1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackgroundBitmap error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    :catch_2
    move-exception v1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackgroundBitmap OutOfMemoryError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;IILandroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 645
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 646
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 648
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 650
    int-to-float v1, p2

    div-float/2addr v1, v0

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v3, v1

    .line 651
    int-to-float v1, p3

    div-float/2addr v1, v0

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v4, v1

    .line 653
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 654
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 656
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 657
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 659
    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    new-instance v1, Ljava/io/File;

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 664
    if-eq p1, v0, :cond_0

    .line 665
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    :cond_0
    return-object v1
.end method

.method public a(I)Lcom/viber/voip/backgrounds/o;
    .locals 3
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/a;->i()Ljava/util/List;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/o;

    .line 268
    iget v2, v0, Lcom/viber/voip/backgrounds/o;->a:I

    if-ne p1, v2, :cond_0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Lcom/viber/voip/backgrounds/q;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 317
    sget-object v1, Lcom/viber/voip/backgrounds/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 322
    :cond_0
    :try_start_0
    new-instance v1, Lcom/viber/voip/backgrounds/q;

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v3, p2, v0}, Lcom/viber/voip/backgrounds/q;-><init>(IIZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 327
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 324
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 327
    goto :goto_0
.end method

.method public a(Lcom/viber/voip/backgrounds/m;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+++ BackgroundDeploymentListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 1
    .parameter

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/viber/voip/backgrounds/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/backgrounds/e;-><init>(Lcom/viber/voip/backgrounds/a;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/m;)V

    .line 476
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->e:Lcom/viber/voip/backgrounds/b/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/backgrounds/b/a;->a(Lcom/viber/voip/backgrounds/q;)V

    .line 481
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;)[Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 677
    invoke-interface {p2}, Lcom/viber/voip/backgrounds/r;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Ljava/io/File;

    invoke-interface {p2, v4}, Lcom/viber/voip/backgrounds/r;->a(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-interface {p2}, Lcom/viber/voip/backgrounds/r;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-static {v2, v1}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    .line 687
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/backgrounds/a;->a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;Landroid/graphics/Bitmap;)[Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/viber/voip/backgrounds/r;Landroid/graphics/Bitmap;)[Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 691
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/viber/voip/backgrounds/r;->a()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 692
    new-instance v2, Ljava/io/File;

    invoke-interface {p2}, Lcom/viber/voip/backgrounds/r;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    :try_start_0
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 695
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/content/Context;)I

    move-result v3

    .line 697
    const/4 v4, 0x0

    aget v4, v0, v4

    .line 698
    const/4 v5, 0x1

    aget v0, v0, v5

    .line 700
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 702
    const/high16 v6, 0x4100

    invoke-static {p1, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v6

    .line 704
    sub-int v7, v0, v3

    sub-int/2addr v7, v5

    sub-int/2addr v7, v8

    .line 705
    sub-int v3, v4, v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v8

    add-int/2addr v3, v6

    .line 709
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 710
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 711
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 712
    const v8, 0x7f0a0262

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v5, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 713
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 714
    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 717
    :cond_0
    if-nez p3, :cond_1

    .line 718
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    const/4 v8, 0x0

    invoke-static {p1, v2, v5, v6, v8}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 725
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, v2}, Lcom/viber/voip/backgrounds/r;->a(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p3, v4, v7, v2}, Lcom/viber/voip/backgrounds/a;->a(Landroid/graphics/Bitmap;IILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 726
    const/4 v4, 0x1

    :try_start_2
    invoke-interface {p2, v4}, Lcom/viber/voip/backgrounds/r;->a(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, p3, v0, v3, v4}, Lcom/viber/voip/backgrounds/a;->a(Landroid/graphics/Bitmap;IILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 731
    :goto_0
    if-eqz p3, :cond_2

    .line 732
    :try_start_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 735
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 742
    :goto_1
    return-object v0

    .line 727
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 728
    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 738
    :catch_1
    move-exception v0

    .line 739
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 742
    goto :goto_1

    .line 727
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/backgrounds/o;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x9896e4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 202
    if-eqz v5, :cond_3

    .line 203
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 204
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 206
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 218
    if-ne v7, v10, :cond_0

    .line 224
    new-instance v8, Lcom/viber/voip/backgrounds/o;

    invoke-direct {v8, v7}, Lcom/viber/voip/backgrounds/o;-><init>(I)V

    .line 225
    invoke-direct {p0, v7}, Lcom/viber/voip/backgrounds/a;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/viber/voip/backgrounds/o;->a(Ljava/util/ArrayList;)V

    .line 227
    invoke-virtual {p0, v8}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/o;)I

    move-result v0

    .line 228
    invoke-virtual {p0, v8}, Lcom/viber/voip/backgrounds/a;->c(Lcom/viber/voip/backgrounds/o;)Ljava/lang/String;

    move-result-object v7

    .line 229
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    if-lez v0, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v0, :cond_2

    move v0, v1

    .line 234
    :goto_2
    invoke-virtual {v8, v0}, Lcom/viber/voip/backgrounds/o;->b(Z)V

    .line 236
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 231
    goto :goto_2

    :cond_3
    move v0, v2

    .line 241
    :cond_4
    if-nez v0, :cond_5

    .line 242
    new-instance v0, Lcom/viber/voip/backgrounds/o;

    invoke-direct {v0, v10}, Lcom/viber/voip/backgrounds/o;-><init>(I)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/o;->a(Z)V

    .line 244
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_5
    return-object v4

    .line 214
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public b(Lcom/viber/voip/backgrounds/m;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--- BackgroundDeploymentListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBackgroundCount New backgrounds size is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->d(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bg_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 258
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/q;)V
    .locals 7
    .parameter

    .prologue
    .line 484
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/viber/voip/backgrounds/q;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    iget-object v2, p1, Lcom/viber/voip/backgrounds/q;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    iget v4, p1, Lcom/viber/voip/backgrounds/q;->b:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p1, Lcom/viber/voip/backgrounds/q;->c:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Lcom/viber/voip/messages/extras/image/a;

    .line 489
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    iget-object v2, p1, Lcom/viber/voip/backgrounds/q;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    iget v4, p1, Lcom/viber/voip/backgrounds/q;->b:I

    iget v5, p1, Lcom/viber/voip/backgrounds/q;->c:I

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Lcom/viber/voip/messages/extras/image/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 495
    :cond_1
    new-instance v0, Lcom/viber/voip/backgrounds/k;

    invoke-direct {v0}, Lcom/viber/voip/backgrounds/k;-><init>()V

    throw v0
.end method

.method public c(Lcom/viber/voip/backgrounds/o;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 261
    iget v0, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/a;->a(I)I

    move-result v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->g:Lcom/viber/voip/util/o;

    invoke-virtual {v0}, Lcom/viber/voip/util/o;->evictAll()V

    .line 375
    monitor-exit v1

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/backgrounds/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/backgrounds/d;-><init>(Lcom/viber/voip/backgrounds/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method d(Lcom/viber/voip/backgrounds/o;)V
    .locals 4
    .parameter

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/viber/voip/backgrounds/o;->b()Z

    move-result v0

    .line 278
    new-instance v1, Lcom/viber/voip/backgrounds/c;

    iget v2, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/backgrounds/c;-><init>(Lcom/viber/voip/backgrounds/a;I)V

    .line 290
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    iget v2, p1, Lcom/viber/voip/backgrounds/o;->a:I

    sget v3, Lcom/viber/voip/backgrounds/n;->b:I

    invoke-static {v2, v3}, Lcom/viber/voip/backgrounds/b/a;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/viber/voip/backgrounds/a;->e:Lcom/viber/voip/backgrounds/b/a;

    invoke-virtual {v2, p1}, Lcom/viber/voip/backgrounds/b/a;->a(Lcom/viber/voip/backgrounds/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/m;)V

    .line 297
    invoke-virtual {v1}, Lcom/viber/voip/backgrounds/b/f;->a()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/viber/voip/backgrounds/b/f;->b(Lcom/viber/voip/backgrounds/o;)V

    goto :goto_0

    .line 307
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/viber/voip/backgrounds/b/f;->b(Lcom/viber/voip/backgrounds/o;)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 435
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/u;->h()J

    move-result-wide v0

    .line 436
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 437
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 440
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/backgrounds/i;

    invoke-direct {v1, p0}, Lcom/viber/voip/backgrounds/i;-><init>(Lcom/viber/voip/backgrounds/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method
