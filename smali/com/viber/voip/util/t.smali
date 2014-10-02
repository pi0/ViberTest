.class public Lcom/viber/voip/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/util/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/util/t;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1, p0}, Lcom/viber/voip/util/t;->a(Lcom/viber/voip/util/t;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method final a(Lcom/viber/voip/util/t;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/util/t;->a:Lcom/viber/voip/util/t;

    .line 25
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/viber/voip/util/t;->a()V

    .line 19
    iget-object v0, p0, Lcom/viber/voip/util/t;->a:Lcom/viber/voip/util/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/t;->a:Lcom/viber/voip/util/t;

    invoke-virtual {v0}, Lcom/viber/voip/util/t;->b()V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/util/t;->c()V

    .line 21
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
