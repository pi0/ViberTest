.class public Lcom/viber/voip/messages/ui/ee;
.super Lcom/viber/voip/messages/ui/dl;
.source "SourceFile"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(ZZZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/ui/dl;-><init>(ZZZ)V

    .line 110
    iput p4, p0, Lcom/viber/voip/messages/ui/ee;->d:I

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ee;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/viber/voip/messages/ui/ee;->d:I

    return v0
.end method
