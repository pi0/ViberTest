.class final Lcom/viber/voip/block/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/a/d;


# instance fields
.field final synthetic a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/viber/voip/block/m;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    invoke-static {}, Lcom/viber/voip/block/i;->b()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/block/m;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/a/a;->a(Ljava/util/Set;)V

    .line 190
    return-void
.end method
