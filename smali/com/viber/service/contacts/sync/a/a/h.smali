.class public Lcom/viber/service/contacts/sync/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/h;->f:Ljava/util/Set;

    .line 646
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/service/contacts/sync/a/a/h;->g:Ljava/util/Set;

    .line 649
    iput-wide p1, p0, Lcom/viber/service/contacts/sync/a/a/h;->b:J

    .line 650
    iput-wide p3, p0, Lcom/viber/service/contacts/sync/a/a/h;->c:J

    .line 651
    iput-object p6, p0, Lcom/viber/service/contacts/sync/a/a/h;->e:Ljava/lang/String;

    .line 652
    iput p5, p0, Lcom/viber/service/contacts/sync/a/a/h;->d:I

    .line 653
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 656
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/h;->f:Ljava/util/Set;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 662
    :goto_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 664
    iget-wide v2, p0, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 665
    :cond_0
    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/h;->a:J

    .line 667
    :cond_1
    return-void

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/viber/service/contacts/sync/a/a/h;->g:Ljava/util/Set;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
