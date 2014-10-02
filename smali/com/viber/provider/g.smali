.class public Lcom/viber/provider/g;
.super Lcom/viber/provider/h;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/viber/provider/h;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/provider/g;->a:Ljava/util/Set;

    .line 195
    iput-object p1, p0, Lcom/viber/provider/g;->b:Landroid/content/ContentResolver;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/provider/g;-><init>(Landroid/content/ContentResolver;)V

    .line 200
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/provider/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public onCommit()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/provider/g;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 209
    iget-object v2, p0, Lcom/viber/provider/g;->b:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method
