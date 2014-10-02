.class Lcom/viber/voip/calls/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/af;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/viber/voip/calls/af;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/viber/voip/calls/an;->a:Lcom/viber/voip/calls/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/an;-><init>(Lcom/viber/voip/calls/af;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/viber/voip/calls/an;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/viber/voip/calls/an;->b:J

    .line 288
    return-void
.end method
