.class public Lcom/viber/voip/messages/conversation/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/conversation/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a;->c:Landroid/util/SparseArray;

    .line 29
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a;->a:Landroid/view/LayoutInflater;

    .line 30
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a;->b:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/a;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public a(IILcom/viber/voip/messages/conversation/a/c;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/a;->c:Landroid/util/SparseArray;

    new-instance v0, Lcom/viber/voip/messages/conversation/a/d;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/a/d;-><init>(Lcom/viber/voip/messages/conversation/a/a;IILcom/viber/voip/messages/conversation/a/c;Lcom/viber/voip/messages/conversation/a/b;)V

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method public b(I)Lcom/viber/voip/messages/conversation/a/d;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/d;

    return-object v0
.end method
