.class public final Lcom/viber/voip/messages/extras/fb/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/aj;->a:Ljava/lang/String;

    .line 769
    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/aj;->b:Ljava/lang/String;

    .line 770
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 763
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/fb/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/aj;->b:Ljava/lang/String;

    return-object v0
.end method
