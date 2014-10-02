.class Lcom/viber/voip/phone/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/q;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/phone/r;->a:Lcom/viber/voip/phone/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/r;->a:Lcom/viber/voip/phone/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/q;->a(Lcom/viber/voip/phone/q;Z)Z

    .line 133
    :cond_0
    return-void
.end method
