.class public Lcom/viber/error/report/ErrorReportDialog;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/viber/error/report/ErrorReportDialog;->finish()V

    .line 57
    return-void
.end method

.method private b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/error/report/ErrorReportDialog;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 86
    new-instance v1, Lcom/viber/error/report/c;

    invoke-direct {v1, p0}, Lcom/viber/error/report/c;-><init>(Lcom/viber/error/report/ErrorReportDialog;)V

    .line 91
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/error/report/ErrorReportDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c07b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/viber/error/report/ErrorReportDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/viber/error/report/ErrorReportDialog;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {p0, v2, v0, v1}, Lcom/viber/error/report/a;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/viber/error/report/ErrorReportDialog;->finish()V

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    .line 61
    const-string/jumbo v0, "ErrorReportDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish mForget.isChecked():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/error/report/ErrorReportDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/viber/error/report/ErrorReportDialog;->b()[Ljava/lang/String;

    move-result-object v1

    .line 66
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 68
    const/4 v4, 0x3

    const-string/jumbo v5, "ErrorReportDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete old crash file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/viber/error/report/ErrorReportDialog;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/viber/error/report/ErrorReportDialog;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/viber/error/report/ErrorReportDialog;->c()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/viber/error/report/ErrorReportDialog;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Lcom/viber/error/report/ErrorReportDialog;->setContentView(I)V

    .line 30
    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/viber/error/report/ErrorReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->a:Landroid/widget/Button;

    .line 31
    const v0, 0x7f070215

    invoke-virtual {p0, v0}, Lcom/viber/error/report/ErrorReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->b:Landroid/widget/Button;

    .line 32
    const v0, 0x7f070212

    invoke-virtual {p0, v0}, Lcom/viber/error/report/ErrorReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->c:Landroid/widget/CheckBox;

    .line 33
    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/viber/error/report/ErrorReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->d:Landroid/widget/CheckBox;

    .line 35
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/viber/voip/w;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/error/report/ErrorReportDialog;->e:Ljava/lang/String;

    .line 43
    return-void
.end method
