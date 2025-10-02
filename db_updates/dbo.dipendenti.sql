CREATE TABLE [dbo].[dipendenti] (
    [idDipendente]   INT          IDENTITY (1, 1) NOT NULL,
    [cognome]        VARCHAR (50) NOT NULL,
    [nome]           VARCHAR (50) NOT NULL,
    [email]          VARCHAR (50) NULL,
    [dataAssunzione] DATE         DEFAULT (getdate()) NULL,
    [stipendio]      FLOAT (53)   NULL,
    [idTutor]        INT          NULL,
    [idReparto]      INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([idDipendente] ASC),
    FOREIGN KEY ([idTutor]) REFERENCES [dbo].[dipendenti] ([idDipendente]),
    FOREIGN KEY ([idReparto]) REFERENCES [dbo].[reparti] ([id]),
    CONSTRAINT [check_stipendio] CHECK ([stipendio]>(0))
);

