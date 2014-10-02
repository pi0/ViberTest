.class public Lcom/viber/voip/DontKillMeActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/DontKillMeActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/DontKillMeActivity;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/DontKillMeActivity;->finish()V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string/jumbo v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/viber/voip/DontKillMeActivity;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/viber/voip/DontKillMeActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0, v1}, Lcom/viber/voip/DontKillMeActivity;->setRequestedOrientation(I)V

    .line 24
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/viber/voip/DontKillMeActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Lcom/viber/voip/DontKillMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
