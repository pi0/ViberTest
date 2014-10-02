.class public Lcom/viber/voip/messages/ui/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/dl;->a:Z

    .line 150
    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/dl;->b:Z

    .line 151
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/dl;-><init>(ZZ)V

    .line 155
    iput-boolean p3, p0, Lcom/viber/voip/messages/ui/dl;->c:Z

    .line 156
    return-void
.end method
