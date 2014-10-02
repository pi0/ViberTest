.class public Lcom/viber/voip/util/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/util/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/bi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bi;->b:Ljava/util/HashSet;

    .line 23
    return-void
.end method

.method private a(Ljava/util/List;Ljava/io/File;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 68
    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 73
    const-string/jumbo v4, ".."

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "."

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    iget-boolean v4, p0, Lcom/viber/voip/util/bi;->c:Z

    if-eqz v4, :cond_4

    .line 77
    const/16 v4, 0x14

    if-ge p3, v4, :cond_5

    .line 78
    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/viber/voip/util/bi;->a(Ljava/util/List;Ljava/io/File;I)V

    .line 91
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_2

    .line 92
    const-string/jumbo v0, "findGarbage: Too match files were collected. return to prevent OOM"

    invoke-static {v0}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v3, "findGarbage: It is too deep to check folder"

    invoke-static {v3}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_6
    iget-object v4, p0, Lcom/viber/voip/util/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 85
    invoke-virtual {p0, v3}, Lcom/viber/voip/util/bi;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/util/bi;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/viber/voip/util/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    const-string/jumbo v0, "Garbage: ================"

    invoke-static {v0}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 54
    :try_start_0
    const-string/jumbo v0, "ZZzZZzz...."

    invoke-static {v0}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    .line 55
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 60
    :cond_0
    const-string/jumbo v0, "========================="

    invoke-static {v0}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    .line 64
    :goto_1
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "No garbage detected"

    invoke-static {v0}, Lcom/viber/voip/util/bi;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/viber/voip/util/bi;->c:Z

    .line 27
    return-void
.end method

.method protected a(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/util/bi;->a(Ljava/util/List;Ljava/io/File;I)V

    .line 43
    return-object v0
.end method
